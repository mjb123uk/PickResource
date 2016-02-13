<div id="tv-input-properties-form{$tv}"></div>
{literal}

<script type="text/javascript">
// <![CDATA[
var params = {
{/literal}{foreach from=$params key=k item=v name='p'}
 '{$k}': '{$v|escape:"javascript"}'{if NOT $smarty.foreach.p.last},{/if}
{/foreach}{literal}
};
var oc = {'change':{fn:function(){Ext.getCmp('modx-panel-tv').markDirty();},scope:this}};
MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,cls: 'form-with-labels'
    ,labelAlign: 'top'
    ,border: false
    ,items: [{
        xtype: 'hidden' // was 'textfield'
        ,fieldLabel: _('resourcelist_parents')
        ,description: MODx.expandHelp ? '' : _('resourcelist_parents_desc')
        ,name: 'inopt_parents'
        ,id: 'inopt_parents{/literal}{$tv}{literal}'
        ,value: params['parents'] || ''
        ,anchor: '100%'
        ,listeners: oc
    },{
        xtype: 'hidden' // was MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_parents{/literal}{$tv}{literal}'
        ,html: _('resourcelist_parents_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'hidden' // was 'textfield'
        ,fieldLabel: _('resourcelist_depth')
        ,description: MODx.expandHelp ? '' : _('resourcelist_depth_desc')
        ,name: 'inopt_depth'
        ,id: 'inopt_depth{/literal}{$tv}{literal}'
        ,value: params['depth'] || 10
        ,width: 200
        ,listeners: oc
    },{
        xtype: 'hidden' // was MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_depth{/literal}{$tv}{literal}'
        ,html: _('resourcelist_depth_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'textfield'
        ,fieldLabel: 'Root Resource ID'
        ,description: 'The Resource ID to use as the root of the tree'
        ,name: 'inopt_rootid'
        ,id: 'inopt_rootid{/literal}{$tv}{literal}'
        ,value: params['rootid'] || 0
        ,width: 200
        ,listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_rootid{/literal}{$tv}{literal}'
        ,html: 'Tree Root Resource ID (default 0)'
        ,cls: 'desc-under'
    },{
        xtype: 'textfield'
        ,fieldLabel: 'Excludes'
        ,description: 'A list of IDs to exclude from treelist.'
        ,name: 'inopt_excludes'
        ,id: 'inopt_excludes{/literal}{$tv}{literal}'
        ,value: params['excludes'] || ''
        ,anchor: '100%'
        ,listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_excludes{/literal}{$tv}{literal}'
        ,html: 'A list of IDs to exclude from treelist (separate ids with ,).'
        ,cls: 'desc-under'
    }]
    ,renderTo: 'tv-input-properties-form{/literal}{$tv}{literal}'
});
// ]]>
</script>
{/literal}
