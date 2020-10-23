<?php
/**
 * Created by Andrey Stepanenko.
 * User: webnitros
 * Date: 26.01.2020
 * Time: 16:52
 */
/* @var modX $modx */


$rankFields = 'price,new,popular,sale';
$rankFields = explode(',', $rankFields);
$allowedFields = 'price,diameter,height,length,volume,width,power,voltage,num_of_socket,vendor,lamp_socket,lamp_style,color,size,new,popular,favorite,sale,box_height,box_length,box_width,num_of_lamp,lamp_style,plafond_color,collection,armature_color,armature_material,plafond_material,lamp_type,light_flow,energy_eff_class,mesto_montaza,interer,mesto_prim,krepej,osobennost,dopolnitelno,light_temperatures,pu_dimmer,forma,sub_lin_razm,sub_oc_razm,ottenok,viklyuchatel,forma_plafona,ploshad_osvesheniya,ip_class,light_temp,life_time,lamp_type2,power2,lamp_socket2,num_of_socket2,length_shnuran,depth_vrezki,country_orig,shirina_vrezki,diametr_vrezki,dlina_vrezki,tsvet_temp';
$allowedFields = explode(',', $allowedFields);
$allowedFields = array_filter($allowedFields);
$allowedFields = array_flip($allowedFields);

$types = array(
    'json' => array(
        'table' => 'msoption',
        'type' => 'default',
        'tpl' => 'default'
    ),
    'boolean' => array(
        'table' => 'ms',
        'type' => 'boolean',
        'tpl' => 'boolean',
    ),
    'string' => array(
        'table' => 'ms',
        'type' => 'default',
        'tpl' => 'default',
    ),
    'float' => array(
        'table' => 'ms',
        'type' => 'number',
        'tpl' => 'slider'
    ),
    'integer' => array(
        'table' => 'ms',
        'type' => 'number',
        'tpl' => 'slider',
    ),
);
$fields = $modx->getFieldMeta('msProductData');
$personal = array(
    'old_price' => array(
        'type' => 'boolean',
        'table' => 'ms',
        'tpl' => 'default',
        'tpls' => array(
            'outer' => 'tpl.mFilter2.filter.outer.collarycheckbox.boolean',
            'row' => 'tpl.mFilter2.filter.collary.old_price'
        )
    ),
    'vendor' => array(
        'type' => 'vendors',
        'table' => 'ms',
        'tpl' => 'default',
    )
);


$filters = array();
foreach ($fields as $field => $meta) {
    if (array_key_exists($field, $allowedFields)) {
        $type = $meta['phptype'];
        if (array_key_exists($type, $types)) {
            if (array_key_exists($field, $personal)) {
                $filters[$field] = $personal[$field];
            } else {
                $filters[$field] = $types[$type];
            }
        }
    }
}
$tpls = array(
    'slider' => array(
        'outer' => '@FILE chunks/catalog/filters/slider/outer.tpl',
        'row' => '@FILE chunks/catalog/filters/slider/row.tpl',
    ),
    'default' => array(
        'outer' => '@FILE chunks/catalog/filters/default/outer.tpl',
        'row' => '@FILE chunks/catalog/filters/default/row.tpl',
    ),
    'boolean' => array(
        'outer' => '@FILE chunks/catalog/filters/boolean/outer.tpl',
        'row' => '@FILE chunks/catalog/filters/boolean/row.tpl',
    ),
);


foreach ($filters as $filter => $data) {
    $tpl = $data['tpl'];
    $type = $data['type'];
    if (array_key_exists($tpl, $tpls)) {

        $key = $data['table'] . '|' . $filter;

        $prefix_outer = 'tplFilter.outer.' . $filter;
        $prefix_row = 'tplFilter.row.' . $filter;

        if (array_key_exists($filter, $personal) and !empty($personal[$filter]['tpls'])) {
            // Установка персонального шаблона
            $tpls[$key] = $personal[$filter]['tpls'];
            unset($filters[$filter]['tpls']);
        }

        unset($filters[$filter]['tpl']);
        unset($filters[$filter]['table']);
        unset($filters[$filter]['type']);

        $filter_key = $key . ':' . $type;

        $filters[$filter]['alias'] = $key.'=='.$filter;
        $filters[$filter]['filter'] = $filter_key;
        $filters[$filter]['key'] = $key;
        $filters[$filter]['tpls'][$prefix_outer] = $tpls[$tpl]['outer'];
        $filters[$filter]['tpls'][$prefix_row] = $tpls[$tpl]['row'];
    }
}

$newFilter = array();
foreach ($rankFields as $key) {
    if (array_key_exists($key, $filters)) {
        $newFilter[$key] = $filters[$key];
        unset($filters[$key]);
    }
}
foreach ($filters as $key => $data) {
    $newFilter[$key] = $data;
}


return $newFilter;