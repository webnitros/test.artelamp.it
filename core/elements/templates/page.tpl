{extends 'file:templates/base.tpl'}
{block 'sidebar'}
    <h3>Категории</h3>
    {$modx->runSnippet('pdoMenu', [
        'parents' => 2,
        'depth' => 0,
        'outerClass' => 'nav nav-pills flex-column',
        'tplOuter' => '@INLINE <ul[[+classes]]>[[+wrapper]]</ul>',
        'tpl' => '@FILE chunks/catalog/category.row.tpl',
    ])}
{/block}
{block 'content'}
    <h1>{$modx->resource->pagetitle}</h1>
    {$modx->resource->content}
{/block}
