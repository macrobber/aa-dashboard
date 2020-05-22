<?php include('report_dimensionDetailNoTabs.php');?>


<div>
    <div class="row">
        <div class="col-12 col-md">
            <div class="owa_reportSectionContent">
                <div class="section_header">Actions by Name</div>
                <div style="min-width:250px;" id="actionsByNameExplorer"></div>
                <script>

                var aurl = '<?php echo $this->makeApiLink(array('do' => 'reports', 'module' => 'base', 'version' => 'v1',
                                                                  'metrics' => 'actions',
                                                                  'dimensions' => 'actionGroup,actionName',
                                                                  'sort' => 'actions-',
                                                                  'resultsPerPage' => 5,
                                                                  'format' => 'json'), true);?>';

                rsh = new OWA.resultSetExplorer('actionsByNameExplorer');
                var link = '<?php echo $this->makeLink(array('do' => 'base.reportActionDetail', 'actionName' => '%s', 'actionGroup' => '%s'), true);?>';
                rsh.addLinkToColumn('actionName', link, ['actionName', 'actionGroup']);
                rsh.asyncQueue.push(['refreshGrid']);
                rsh.load(aurl, 'grid');
                </script>
            </div>
        </div>

        <div class="col-12 col-md">
            <div class="owa_reportSectionContent">
                <div class="section_header">Actions By Group</div>
                <div style="min-width:300px;" id="actionsByGroupExplorer"></div>
                <script>
                var url = '<?php echo $this->makeApiLink(array('do' => 'reports', 'module' => 'base', 'version' => 'v1',
                                                              'metrics' => 'actions',
                                                              'dimensions' => 'actionGroup',
                                                              'sort' => 'actions-',
                                                              'resultsPerPage' => 5,
                                                              'format' => 'json'), true);?>';

                rshre = new OWA.resultSetExplorer('actionsByGroupExplorer');
                var link = '<?php echo $this->makeLink(array('do' => 'base.reportActionGroup', 'actionGroup' => '%s'), true);?>';
                rshre.addLinkToColumn('actionGroup', link, ['actionGroup']);
                rshre.asyncQueue.push(['refreshGrid']);
                rshre.load(url);
                </script>
            </div>
        </div>
    </div>
</div>

