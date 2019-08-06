<?php $this->load->view ("user/header") ?>
<!--banner-->
 <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/user/style.css')?>">
 <form action="<?php echo base_url('Index/proses_login'); ?>" method="post">
 	<center>
 	<div class="container2">
      	<div class="form-group">
	        <div class="input-group">
	            <span class="input-group-addon">
	                <i class="fa fa-user"></i>
	            </span>
	            <input type="text" name="nis" id="nis" placeholder="masukkan NIS anda" class="form-control">
	        </div>
    	</div>
    	<div class="form-group">
	        <div class="input-group">
	            <span class="input-group-addon">
	                <i class="fa fa-unlock"></i>
	            </span>
	            <input type="password" name="password" id="password" placeholder="masukkan password anda" class="form-control">
	        </div>
    	</div>
      
      <input type="submit" name="submit" id="submit" value="login" class="btn btn-warning">
      <input type="reset" name="reset" id="reset" value="reset" class="btn btn-danger">
    </div>
    </center>
   </form>                                         
<?php $this->load->view ("user/footer")?>