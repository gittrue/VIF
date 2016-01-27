<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
  <div class="news_style_information">
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="name_news"><?php echo $heading_title; ?></h1>
	  <?php if ($image) { ?>
	  <div class="text-center">
	  <img class="pull-left" src="<?php echo $image; ?>" alt="<?php echo $heading_title; ?>" />
	  </div>
	  <?php } ?>
	  <p><?php echo $description; ?></p>
	  <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?>
  </div>
  </div>
</div>
<?php echo $footer; ?> 