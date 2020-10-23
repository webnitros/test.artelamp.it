{var $assets_source = '/inc/'}
<!DOCTYPE html>
<html lang="en">
<head>
    {include 'file:chunks/head.tpl'}
</head>
<body>
{block 'header'}
    {include 'file:chunks/header.tpl'}
{/block}
{block 'crumbs'}
    {include 'file:chunks/crumbs.tpl'}
{/block}
{block 'section'}
    <div class="container">
        {block 'main'}
        <div id="content" class="main">
            <div class="row">
                <div class="col-md-3">
                    {block 'sidebar'}
                        {include 'file:chunks/sidebar.tpl'}
                    {/block}
                </div>
                <div class="col-md-9">
                    {block 'content'}
                        <h1>{$modx->resource->pagetitle}</h1>
                        {$modx->resource->content}
                    {/block}
                </div>
            </div>
        </div>
        {/block}
    </div>
{/block}
{include 'file:chunks/footer.tpl'}
</body>
</html>