<!-- HEAD Elements -->
<?php if(!empty($css)): ?>
<?php foreach ($css as $cssfile): ?>
<LINK REL=StyleSheet HREF="<?php echo $cssfile['url'];?>" TYPE="text/css">
<?php endforeach; ?>
<?php endif;?>
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

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


<!-- END HEAD -->