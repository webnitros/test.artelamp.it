<div class="unit">
    <div class="element">
        {if $new?}
            <div class="the_marker">
                <img src="images/list_new.png" alt="">
            </div>
        {/if}
        <div class="imgwr">
            {if $thumb?}
                <img src="{$medium}" alt="{$pagetitle | striptags}" />
            {else}
                <img src="{'assets_url' | option}components/minishop2/img/web/ms2_big.png" alt="Нет фото" />
            {/if}
        </div>
        <div class="the_content">
            <p class="tit">
                <a href="/{$uri}">{$pagetitle}</a>
            </p>
            <p class="article">
                <a href="/{$uri}">A8564PL-5RB</a>
            </p>
            <div class="d_flex">
                <div class="el el1">
                    <div class="on_store">В наличии: 3000 шт.</div>
                </div>
                <div class="el el2">
                    <div class="like_buttons">
                        <button class="btn_link btn_link_weight"></button>
                        <button class="btn_link btn_link_like">
                        </button>
                        <button class="btn_link btn_buy" data-toggle="modal" data-target="#good_cart"></button>
                    </div>
                </div>
            </div>
            <div class="d_flex dflex_cost">
                <div class="el el1">
                    <div class="the_cost">
                        <p>{$price} р.</p>
                        {if $old_price?}
                            <del>{$old_price} р.</del>
                        {/if}
                    </div>
                </div>
                <div class="el el2">
                    <form method="post" class="ms2_form">
                        <input type="hidden" name="id" value="{$id}">
                        <input type="hidden" name="count" value="1">
                        <button class="btn_buy" type="submit" name="ms2_action" value="cart/add">Купить</button>
                       {* <button class="btn_buy" data-toggle="modal" data-target="#good_cart">Купить</button>*}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>