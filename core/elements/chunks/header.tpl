<section class="header">
    <div class="jcont" style="border-top: 5px solid #000000;">
        <div class="header_top">
            <div class="header_logo">
                <a href="">
                    <img src="{$assets_source}images/logo.svg" alt="">
                </a>
            </div>
            <div class="header_search">
                <div class="header_search_controll">
                    <form action="/search.html">
                        <input type="text" placeholder="Поиск по каталогу" value="{$.get['query']}" name="query">
                        <button class="btn btn_submit"></button>
                        <button class="btn btn_close_search"></button>
                    </form>
                </div>
                <button class="btn js_btn_open"></button>
            </div>

            <div class="header_icons">
                <div class="el">
                    <button href="" class="but but1"></button>
                </div>
                <div class="el">
                    <a href="" class="but but2"></a>
                </div>
                <div class="el">
                    <a href="" class="but but3"></a>
                    <div class="val">11</div>
                </div>
                <div class="el el_mob">
                    <button href="" class="but but4"></button>
                    <div class="val">11</div>
                </div>
                <div class="el el_mob el_desk_no">
                    <button href="" class="but but5 but_bars"></button>
                </div>
            </div>

            <div class="header_menu">
                <div class="main_menu">
                    <ul>
                        <li class="open">
                            <a href="">Продукция</a>
                            {* getCache
                            {'!pdoMenu' | snippet : [
                                'element' => 'pdoMenu',
                                'cacheKey' => 'full_menu_catalog',
                                'cacheElementKey' => 'full_menu_catalog',
                                'hereClass' => '',
                                'namespace' => 'header',
                                'cacheExpires' => 0,
                                'parents' => 2,
                                'level' => 2,
                                'where' => ['class_key:IN' => ['msCategory','modWebLink']],
                                'tpl' => '@INLINE <li [[+classes]]><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>',
                                'tplOuter' => '@INLINE <ul [[+classes]]>[[+wrapper]]</ul>',
                                'outerClass' => 'flex-row-container',
                                'rowClass' => 'flex-row-item',
                            ]}*}
                        </li>
                        <li>
                            <a href="">коллекции</a>
                        </li>
                        <li>
                            <a href="">дизайнерам</a>
                        </li>
                        <li>
                            <a href="">о компании</a>
                        </li>
                        <li>
                            <a href="">новости</a>
                        </li>
                        <li>
                            <a href="tel:+74957774050">+7 (495) 777-40-50</a>
                        </li>
                        <li>
                            <a href="" class="city">москва</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <div class="header_menu_point">
        <div class="ic"></div>
    </div>
</section>