<!-- HEAD Elements -->
<?php if(!empty($css)): ?>
<?php foreach ($css as $cssfile): ?>
<LINK REL=StyleSheet HREF="<?php echo $cssfile['url'];?>" TYPE="text/css">
<?php endforeach; ?>
<?php endif;?>

<?php if(!empty($js)): ?>
<?php foreach ($js as $jsfile): ?>
<?php if ($jsfile['ie_only']):?>
 <!--[if IE]><script language="javascript" type="text/javascript" src="<?php echo $jsfile['url'];?>"></script><![endif]-->
<?php else: ?>
<script type="text/javascript" src="<?php echo $jsfile['url'];?>"></script>
<?php endif;?>
<?php endforeach; ?>
<?php endif;?>

<script>
<?php include('config_dom.tpl'); ?>
</script>
<LINK REL=StyleSheet HREF="./modules/base/css/agis-owa.css" TYPE="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<!-- END HEAD -->