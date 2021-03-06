<?php if (count($languages) > 1) { ?>
<div class="pull-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
  <div class="btn-group">
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
		<span><?php echo $text_language; ?>: </span>

		<span >
		<?php foreach ($languages as $language) if ($language['code'] == $code) echo $language['name']; ?>
	</span>		

<i class="fa fa-caret-down"></i></button>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
      <li>
				<button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>">
			 	<?php echo $language['name']; ?></button>
			</li>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
