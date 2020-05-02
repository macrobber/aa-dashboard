
<div id="owa_header" class="nav">

    <!-- <span class="owa_logo"><img src="<?php echo $this->makeImageLink( owa_coreAPI::getSetting( 'base', 'logo_image_path' ) ); ?>" style="height: 65px;" alt="Open Web Analytics"></span> -->
    <div class="col-md col-12">
        <img src="https://agisanalytics.com/wp-content/uploads/2020/04/cropped-agis-10-4-150x117-1-1.png" style="height: 65px;" alt="Open Web Analytics">
        <span style="color: #76bd2a; font-size: 24px;">AGIS Visum Engine</span>
    </div>

    <!-- <p style="color: #76bd2a; position: absolute; top: 6px; left: 119px; font-size: 27px;">AGIS Visum Engine </p> -->
    <span class="owa_navigation col-md col-12 text-center">
        <UL>
            <?php if ($this->getCurrentUser()->isCapable('view_site_list')): ?>
                <LI><a href="<?php echo $this->makeLink(array('do' => 'base.sites'));?>">Reporting</a></LI>
            <?php endif; ?>
            <?php if ($this->getCurrentUser()->isCapable('edit_settings')): ?>
                <LI><a href="<?php echo $this->makeLink(array('do' => 'base.optionsGeneral'));?>">Settings</a></LI>
            <?php endif; ?>
            <LI><a href="https://agisanalytics.com/help.php">User Guide</a></LI>
            <!--
            <LI><a href="http://wiki.openwebanalytics.com">Help</a></LI>
            <LI><a href="http://trac.openwebanalytics.com">Report a Bug</a></LI>
            -->
        </UL>
    </span>
    <?php $cu = $this->getCurrentUser(); ?>
    <span class="user-greating col text-right">
        Hi, <?php $this->out( $cu->getUserData('user_id') );?> ! &bull;
        <?php if ( ! owa_coreAPI::getSetting( 'base', 'is_embedded' ) ):?>

                <?php if ( owa_coreAPI::isCurrentUserAuthenticated() ):?>
                <a class="login" style="color: white !important;" href="<?php echo $this->makeLink(array('do' => 'base.logout'), false);?>">Logout</a>
                <?php else:?>
                <a class="login" href="<?php echo $this->makeLink(array('do' => 'base.loginForm'), false);?>">Login</a>
                <?php endif;?>

            <?php endif;?>
    </span>
    <div class="post-nav"></div>
    <?php if (!empty($service_msg)): ?>
    <div class="owa_headerServiceMsg"><?php echo $service_msg; ?></div>
    <?php endif;?>

    <?php $this->headerActions(); ?>
</div>
