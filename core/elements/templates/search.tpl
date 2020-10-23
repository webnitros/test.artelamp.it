{extends 'file:templates/base.tpl'}
{block 'pagetitle'}
    <h1 class="sf_h1">[[!+sf.h1:default=`[[*longtitle:default=`[[*pagetitle]]`]]`]]</h1>
{/block}
{block 'content'}
    <div class="catalog" id="catalog">
        <div class="row">

            {var $resources = '!mSearch2' | snippet : ['returnIds' => true,'limit' => 0]}
            {if !$resources}

             <div class="col-md-12">По вашему запросу "<b>{$.get['query']}</b>" ничего не найдено</div>
            {else}
                {'!pdoPage' | snippet : [
                  'element' => 'msProducts',
                  'tpl' => '@FILE chunks/catalog/product.row.tpl',
                  'pageLimit' => 7,
                  'limit' => 18,
                  'parents' => 'catalogid' | placeholder,
                  'resources' => $resources,
                  'where' => [
                    'template' => 5
                  ],
                  'includeThumbs' => 'small,medium',
                  'sortdir' => 'DESC',
                  'ajaxMode' => 'default',
                  'ajaxElemWrapper' => '#catalog',
                  'ajaxElemRows' => '#catalog > .row',
                  'ajaxElemPagination' => '#catalog .pagination',
                  'ajaxElemLink' => '#catalog .pagination a',
                  'tplPageLast' => '@INLINE ',
                  'tplPageLastEmpty' => '@INLINE ',
                  'tplPageFirst' => '@INLINE ',
                  'tplPageFirstEmpty' => '@INLINE ',
                ]}
            {/if}
        </div>
        [[!+pageCount:ne=`1`:then=`[[!+page.nav]]`]]
    </div>
{/block}