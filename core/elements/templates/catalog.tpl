{extends 'file:templates/base.tpl'}
{block 'crumbs'}
{/block}
{block 'section'}
    <section class="listing_title">
        <div class="jcont">
            <div class="title">
                <h1>Каталог</h1><span></span>
            </div>
        </div>
    </section>
    <section class="listing">
        <div class="jcont jcontnopad">
            <div class="dflex" id="mse2_mfilter">
                    {'!mFilter2' | snippet : [
                        'tpl' => '@FILE chunks/catalog/product.row.tpl',
                        'tplOuter' => '@FILE chunks/catalog/filter.outer.tpl',

                        'frontend_css' => '',
                        'limit' => 36,
                        'element' => 'msProducts',
                        'setMeta' => '1',
                        'filters' => 'msoption|color,msoption|size',
                        'aliases' => 'msoption|color==color,msoption|size==size',
                        'class' => 'msProduct',
                        'innerJoin' => ['msCategory' => ['class' => 'msCategory', 'alias' => 'msCategory', 'on' => 'msProduct.parent = msCategory.id']],
                        'sortby' => 'msCategory.menuindex ASC,msProduct.menuindex',

                        'tplFilter.outer.default' => '@FILE chunks/catalog/filters/default/outer.tpl',
                        'tplFilter.row.default' => '@FILE chunks/catalog/filters/default/row.tpl',
                        'ajaxMode' => 'default',
                        'tplPageLastEmpty' => '@INLINE ',
                        'tplPageFirstEmpty' => '@INLINE ',
                        'tplPagePrevEmpty' => '@INLINE ',
                        'tplPageNextEmpty' => '@INLINE ',
                        'suggestionsMaxResults' => 500000,
                        'suggestionsMaxFilters' => 500000,
                        'suggestionsRadio' => '',
                        'showEmptyFilters' => true,
                        'includeThumbs' => 'small,medium',
                        'suggestions' => 1,
                        'suggestionsSliders' => 1,
                        'showLog' => 0,
                        'tplPageWrapper' => '@INLINE <ul class="pagination">{$first}{$prev}{$pages}{$next}{$last}</ul><div class="push40"></div>',
                    ]}
            </div>
        </div>
    </section>
{/block}
