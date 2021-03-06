{footer_script}
    var error_icon = "{$ROOT_URL}{$themeconf.icon_dir}/errors_small.png", max_requests = {$maxRequests};
{/footer_script}
{define_derivative name='derivative_params' width=260 height=180 crop=true}
{foreach from=$category_thumbnails item=cat name=cat_loop}
    {assign var=derivative value=$pwg->derivative($derivative_params, $cat.representative.src_image)}
    {if !$derivative->is_cached()}
        {combine_script id='jquery.ajaxmanager' path='themes/default/js/plugins/jquery.ajaxmanager.js' load='footer'}
        {combine_script id='thumbnails.loader' path='themes/default/js/thumbnails.loader.js' require='jquery.ajaxmanager' load='footer'}
    {/if}
    {include file="grid_classes.tpl" width=260 height=180}
    <div class="col-outer {if $smarty.cookies.view == 'list'}col-lg-12 col-md-12 col-sm-12 col-xs-12{else}{$col_class}{/if}"
         data-grid-classes="{$col_class}">
        <div class="col-inner">
            <a class="col-thumbnail" href="{$cat.URL}">
                <div class="placeholder"
                     style="background: url({$ROOT_URL}{$themeconf.icon_dir}/img_small.png) no-repeat center">
                    <img {strip}{if $derivative->is_cached()}src="{$derivative->get_url()}"
                         {else}src="{$ROOT_URL}themes/csh/img/transparent.png"
                         data-src="{$derivative->get_url()}"{/if}
                         alt="{$cat.TN_ALT}"
                         title="{$cat.NAME|@replace:'"':' '|@strip_tags:false} - {'display this album'|@translate}">{/strip}
                </div>
            </a>
            <div class="caption">
                <h3 class="title">
                    <a href="{$cat.URL}" class="ellipsis{if !empty($cat.icon_ts)} recent{/if}">{$cat.NAME}</a>
                    {if !empty($cat.icon_ts)}
                        <img title="{$cat.icon_ts.TITLE}"
                             src="{$ROOT_URL}themes/csh/img/recent{if $cat.icon_ts.IS_CHILD_DATE}_by_child{/if}.png"
                             alt="(!)">
                    {/if}
                </h3>
                {if isset($cat.INFO_DATES) }
                    <p>{$cat.INFO_DATES}</p>
                {/if}
                <p>{$cat.CAPTION_NB_IMAGES}</p>
                {if not empty($cat.DESCRIPTION)}
                    <p class="description">{$cat.DESCRIPTION}</p>
                {/if}
            </div>
        </div>
    </div>
{/foreach}

