<%
    ui.decorateWith("appui", "standardEmrPage", [ title: ui.message("openhmis.inventory.admin.item.attribute.types") ])
    ui.includeJavascript("uicommons", "jquery-1.12.4.min.js", Integer.MAX_VALUE)
    ui.includeJavascript("uicommons", "jquery-ui-1.9.2.custom.min.js", Integer.MAX_VALUE - 10)
    ui.includeJavascript("uicommons", "underscore-min.js", Integer.MAX_VALUE - 10)
    ui.includeJavascript("uicommons", "knockout-2.2.1.js", Integer.MAX_VALUE - 15)
    ui.includeJavascript("uicommons", "emr.js", Integer.MAX_VALUE - 15)
    ui.includeCss("uicommons", "styleguide/jquery-ui-1.9.2.custom.min.css", Integer.MAX_VALUE - 10)    // toastmessage plugin: https://github.com/akquinet/jquery-toastmessage-plugin/wiki
    ui.includeJavascript("uicommons", "jquery.toastmessage.js", Integer.MAX_VALUE - 20)
    ui.includeCss("uicommons", "styleguide/jquery.toastmessage.css", Integer.MAX_VALUE - 20)    // simplemodal plugin: http://www.ericmmartin.com/projects/simplemodal/
    ui.includeJavascript("uicommons", "jquery.simplemodal.1.4.4.min.js", Integer.MAX_VALUE - 20)
    ui.includeJavascript("uicommons", "angular.min.js")
    ui.includeJavascript("uicommons", "angular-ui/angular-ui-router.min.js")

    ui.includeJavascript("uicommons", "angular-ui/ui-bootstrap-tpls-0.11.2.min.js")
    ui.includeJavascript("uicommons", "angular-common.js")

    /* load re-usables/common modules */
    ui.includeFragment("openhmis.commons", "loadReusableModules")

    /* load item attribute types modules */
    ui.includeJavascript("openhmis.inventory", "itemAttributes/models/entity.model.js")
    ui.includeJavascript("openhmis.inventory", "itemAttributes/services/entity.restful.services.js")
    ui.includeJavascript("openhmis.inventory", "itemAttributes/controllers/entity.controller.js")
    ui.includeJavascript("openhmis.inventory", "itemAttributes/controllers/manage-entity.controller.js")
    ui.includeJavascript("openhmis.inventory", "constants.js")

    /* load stylesheets */
    ui.includeCss("openhmis.commons", "bootstrap.css")
    ui.includeCss("openhmis.commons", "entities2x.css")
    ui.includeCss("openhmis.inventory", "entity.css")
    ui.includeCss("kenyaemr", "referenceapplication.css")


%>

<script data-main="itemAttributes/configs/entity.main" src="/${ ui.contextPath() }/moduleResources/uicommons/scripts/require/require.js"></script>

<div id="itemAttributeTypesApp">
    <div ui-view></div>
</div>
