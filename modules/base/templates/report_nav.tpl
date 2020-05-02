<style type="text/css">
.btn:not(.collapsed) .fa-caret-right:before {
    content: "\f0d7"
}
</style>
<nav class="navbar navbar-expand-md navbar-light bg-light p-0">

    <div class="align-content-center align-items-center d-flex d-md-none justify-content-around">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <span>Menu</span>
    </div>
    <div class="collapse navbar-collapse" id="navbarToggler">
        <ul class="nav">
            <?php foreach ($links as $kl => $l): ?>
            <?php if (!$this->getCurrentUser()->isCapable($l['priviledge'], $currentSiteId)) { continue; } ?>
            <li class="nav-item w-100">
                <span class="align-items-center d-flex justify-content-between">
                    <?php if ($l['icon_class']): ?>
                        <i class="owa_nav_icon <?php $this->out( $l['icon_class']); ?>"></i>
                    <?php endif; ?>
                    <a class="nav-link d-block nav-link w-100" href="<?php echo $this->makeLink(array('do' => $l['ref']), true);?>"><?php echo $l['anchortext'];?></a>
                    <button class="btn <?php echo ($l['ref'] === $params['do'] || ( array_key_exists('subgroup', $l) && in_array( $params['do'], array_column($l['subgroup'], 'ref')))) ? ' ' : ' collapsed' ?>" data-toggle="collapse" href=".<?php echo strtolower(str_replace(' ', '_', $l['anchortext'].'_'.$l['order'])) ?>" role="button" aria-expanded="false" aria-controls="collapseExample">
                        <?php if (array_key_exists('subgroup', $l)): ?>
                            <span class="fa fa-caret-right"></span>
                        <?php else: ?>
                            <span class="fa fa-caret-blank"></span>
                        <?php endif; ?>
                    </button>
                </span>
                <?php if (!empty($l['subgroup'])): ?>
                <ul class="ml-2 collapse list-unstyled <?php echo strtolower(str_replace(' ', '_', $l['anchortext'].'_'.$l['order'])) ?> <?php echo ($l['ref'] === $params['do'] || ( array_key_exists('subgroup', $l) && in_array( $params['do'], array_column($l['subgroup'], 'ref')))) ? ' show' : ' ' ?>">
                    <?php foreach ($l['subgroup'] as $sgl): ?>
                    <?php if (!$this->getCurrentUser()->isCapable($sgl['priviledge'], $currentSiteId)) continue; ?>
                    <li class="nav-item w-100">
                        <a class="nav-link" href="<?php echo $this->makeLink(array('do' => $sgl['ref']), true);?>"><?php echo $sgl['anchortext'];?></a>
                    </li>
                    <?php endforeach;?>
                </ul>
                <?php endif; ?>
            </li>
            <?php endforeach;?>
        </ul>

    </div>
</nav>