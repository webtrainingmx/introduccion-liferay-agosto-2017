<style>
    .b-news .b-left-column {
        padding: 16px 16px 32px 32px;
    }
    
    .b-news .b-left-column__abstract{
        padding-bottom: 16px;
    }
    
    .b-news .b-wrapper{
        padding-bottom: 16px;
    }
    
    .b-news .b-wrapper__image-description {
        font-size: 14px;
    }
    
    .b-news .b-right-column {
        padding: 32px 32px 32px 16px;
    }
</style>
<#assign entryTitle = .vars['reserved-article-title'].data >
<div class="b-news">
    <div class="row">
        <#--<h1>${entryTitle}</h1>-->
        <div class="col-xs-9">
            <div class="b-left-column">
                <p class=".b-left-column__abstract">
                    ${abstract.getData()}
                </p>
                <#if image.getData()?? && image.getData() != "">
                    <div class="b-wrapper">
                    	<img class="b-wrapper__image" alt="${image.getAttribute("alt")}" src="${image.getData()}" />
                    	<span class="b-wrapper__image-description">
                    	    <i>${image.getAttribute("alt")}</i>
                    	</span>
                	</div>
                </#if>
                <div class="b-left-column__body">
                    ${body.getData()}
                </div>
            </div>
        </div>
        <div class="col-xs-3">
            <div class="b-right-column">
                <a class="btn btn-primary btn-lg" href="${internalLink.getFriendlyUrl()}">
                	Internal Link
                </a>
            </div>
        </div>
    </div>
</div>