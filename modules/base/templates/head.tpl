<!-- HEAD Elements -->
<?php if(!empty($css)): ?>
<?php foreach ($css as $cssfile): ?>
<LINK REL=StyleSheet HREF="<?php echo $cssfile['url'];?>" TYPE="text/css">
<?php endforeach; ?>
<?php endif;?>
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

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