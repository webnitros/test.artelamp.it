<div class="listing_filters">
    <div class="listing_filters_units">
        <div class="listing_filters_units_headline">
            <p>
                Фильтры
            </p>
            <div class="option_select2">
                <select name="" id="" class="">
                    <option value="" data-ic="opt1">Дешевле</option>
                    <option value="" data-ic="opt2">Дороже</option>
                    <option value="" data-ic="opt1">По популярности</option>
                    <option value="" data-ic="opt2">По наименованию</option>
                </select>
            </div>
            <button class="btn the_close"></button>
        </div>
        <div class="clean_filters">
            <button class="btn">Очистить все фильтры</button>
            <button class="btn btn_mob_val">Показать xxx товаров</button>
        </div>
        <div class="unit unit_open">
            <button class="btn_opener js_btn active">тип светильника</button>
            <div class="the_list" data-open="y">
                {'!getCache'|snippet: [
                    'element' => 'pdoResources',
                    'cacheKey' => 'sidebar_category_menu',
                    'cacheElementKey' => 'sidebar_category_menu',
                    'cacheExpires' => 10600,
                    'parents'=>2,
                    'depth'=>0,
                    'limit'=>0,
                    'tpl' => '@FILE chunks/catalog/menu/row.tpl',
                    'sortby'=>'id',
                    'sortdir'=>'ASC',
                    'useWeblinkUrl'=> 1,
                ]}
            </div>
        </div>
        <form action="[[~[[*id]]]]" method="post" id="mse2_filters">
            [[+filters]]
            <br/>
            [[+filters:isnot=``:then=`
                <button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                <button type="submit" class="btn btn-success pull-right">[[%mse2_submit]]</button>
                <div class="clearfix"></div>
            `]]
        </form>
    </div>
</div>
<div class="listing_content">
        <div class="listing_content_filter">
            <div class="el el0 top_filter_mobile_button">
                <button class="btn js_open_filter_mobile">
                    Фильтры
                </button>
            </div>
            <div class="el el1">
                <p class="lab">Сортировка</p>
                <div class="top_filter_menu_select">
                    {* TODO сортировка *}
                    <div id="mse2_sort" class="span5 col-md-5">
                        [[%mse2_sort]]
                        <a href="#" data-sort="resource|publishedon" data-dir="[[+mse2_sort:is=`resource|publishedon:desc`:then=`desc`]]" data-default="desc" class="sort">[[%mse2_sort_publishedon]] <span></span></a>
                    </div>
                    {*<div class="option_select">
                        <select name="" class="option_select">
                            <option value="" data-ic="opt1">Дешевле</option>
                            <option value="" data-ic="opt2">Дороже</option>
                            <option value="" data-ic="opt1">
                                По популярности
                            </option>
                            <option value="" data-ic="opt2">По наименованию</option>
                        </select>
                    </div>*}
                </div>
            </div>
            <div class="el el2">
                <p class="lab">
                    Количество
                </p>
                <select name="mse_limit" class="val_goods_select" id="mse2_limit">
                    <option value="10" [[+limit:is=`10`:then=`selected`]]>10</option>
                    <option value="25" [[+limit:is=`25`:then=`selected`]]>25</option>
                    <option value="50" [[+limit:is=`50`:then=`selected`]]>50</option>
                    <option value="100" [[+limit:is=`100`:then=`selected`]]>100</option>
                </select>
            </div>
        </div>
        <div class="listing_content_catalog">
            <div class="listing_content_catalog_units" id="mse2_results">
                [[+results]]
            </div>
            <div class="mse2_pagination listing_content_catalog_pager">
                [[!+page.nav]]
            </div>
            <div class="listing_content_catalog_lastlook">
                <div class="the_title">
                    Последние просмотренные товары
                </div>
                <div class="lastlook_slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <div class="swiper-slide">
                                <div class="unit">
                                    <div class="element">
                                        <div class="the_marker">
                                            <img src="images/list_new.png" alt="">
                                        </div>
                                        <div class="imgwr">
                                            <img src="images/good1.png" alt="">
                                        </div>
                                        <div class="the_content">
                                            <p class="tit">
                                                <a href="">
                                                    Люстра Arte Lamp Rosaria
                                                </a>
                                            </p>
                                            <p class="article">
                                                <a href="">
                                                    A8564PL-5RB
                                                </a>
                                            </p>
                                            <div class="d_flex">
                                                <div class="el el1">
                                                    <div class="on_store">
                                                        В наличии: 3000 шт.
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <div class="like_buttons">
                                                        <button class="btn_link btn_link_weight"></button>
                                                        <button class="btn_link btn_link_like active">
                                                            <span class="the_val">99</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d_flex dflex_cost">
                                                <div class="el el1">
                                                    <div class="the_cost">
                                                        <p>1 454 120 р.</p>
                                                        <del>1 458 120 р.</del>
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <button class="btn_buy" data-toggle="modal" data-target="#good_cart">
                                                        Купить
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="unit">
                                    <div class="element">
                                        <div class="the_marker">
                                            <img src="images/list_new.png" alt="">
                                        </div>
                                        <div class="imgwr">
                                            <img src="images/good1.png" alt="">
                                        </div>
                                        <div class="the_content">
                                            <p class="tit">
                                                <a href="">
                                                    Люстра Arte Lamp Rosaria
                                                </a>
                                            </p>
                                            <p class="article">
                                                <a href="">
                                                    A8564PL-5RB
                                                </a>
                                            </p>
                                            <div class="d_flex">
                                                <div class="el el1">
                                                    <div class="on_store">
                                                        В наличии: 3000 шт.
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <div class="like_buttons">
                                                        <button class="btn_link btn_link_weight"></button>
                                                        <button class="btn_link btn_link_like active">
                                                            <span class="the_val">99</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d_flex dflex_cost">
                                                <div class="el el1">
                                                    <div class="the_cost">
                                                        <p>1 454 120 р.</p>
                                                        <del>1 458 120 р.</del>
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <button class="btn_buy" data-toggle="modal" data-target="#good_cart">
                                                        Купить
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="unit">
                                    <div class="element">
                                        <div class="the_marker">
                                            <img src="images/list_new.png" alt="">
                                        </div>
                                        <div class="imgwr">
                                            <img src="images/good1.png" alt="">
                                        </div>
                                        <div class="the_content">
                                            <p class="tit">
                                                <a href="">
                                                    Люстра Arte Lamp Rosaria
                                                </a>
                                            </p>
                                            <p class="article">
                                                <a href="">
                                                    A8564PL-5RB
                                                </a>
                                            </p>
                                            <div class="d_flex">
                                                <div class="el el1">
                                                    <div class="on_store">
                                                        В наличии: 3000 шт.
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <div class="like_buttons">
                                                        <button class="btn_link btn_link_weight"></button>
                                                        <button class="btn_link btn_link_like active">
                                                            <span class="the_val">99</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d_flex dflex_cost">
                                                <div class="el el1">
                                                    <div class="the_cost">
                                                        <p>1 454 120 р.</p>
                                                        <del>1 458 120 р.</del>
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <button class="btn_buy" data-toggle="modal" data-target="#good_cart">
                                                        Купить
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="unit">
                                    <div class="element">
                                        <div class="the_marker">
                                            <img src="images/list_new.png" alt="">
                                        </div>
                                        <div class="imgwr">
                                            <img src="images/good1.png" alt="">
                                        </div>
                                        <div class="the_content">
                                            <p class="tit">
                                                <a href="">
                                                    Люстра Arte Lamp Rosaria
                                                </a>
                                            </p>
                                            <p class="article">
                                                <a href="">
                                                    A8564PL-5RB
                                                </a>
                                            </p>
                                            <div class="d_flex">
                                                <div class="el el1">
                                                    <div class="on_store">
                                                        В наличии: 3000 шт.
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <div class="like_buttons">
                                                        <button class="btn_link btn_link_weight"></button>
                                                        <button class="btn_link btn_link_like active">
                                                            <span class="the_val">99</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d_flex dflex_cost">
                                                <div class="el el1">
                                                    <div class="the_cost">
                                                        <p>1 454 120 р.</p>
                                                        <del>1 458 120 р.</del>
                                                    </div>
                                                </div>
                                                <div class="el el2">
                                                    <button class="btn_buy" data-toggle="modal" data-target="#good_cart">
                                                        Купить
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- If we need navigation buttons -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
