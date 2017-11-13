<?php 
$this->load->view('template/head');
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<section class="content">
        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-4">
                <h2 style="margin-top:0px">Kematian</h2>
            </div>
            <div class="col-md-4 text-center">
                <div style="margin-top: 4px"  id="message">
                    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                </div>
            </div>
            <div class="col-md-4 text-right">
                <?php echo anchor(site_url('kematian/create'), 'Create', 'class="btn btn-warning"'); ?>
		<?php echo anchor(site_url('kematian/excel'), 'Excel', 'class="btn btn-success"'); ?>
		<?php echo anchor(site_url('kematian/word'), 'Word', 'class="btn btn-primary"'); ?>
	    </div>
        </div>
        <div class="box">
        <div class="box-body">
        <table class="table table-hover" id="mytable">
            <thead>
                <tr>
                    <th width="80px">No</th>
		    <th>Nomer KK</th>
		    <th>Nomer NIK</th>
		    <th>Nama</th>
		    <th>Jenis Kelamin</th>
		    <th>Umur</th>
		    <th>Perkerjaan</th>
		    <th>Waktu Kematian</th>
		    <th>Sebab Kematian</th>
		    <th>Tempat Kematian</th>
		    <th>Blok</th>
		    <th>Rt</th>
		    <th>Rw</th>
		    <th>Action</th>
                </tr>
            </thead>
	    <tbody>
            <?php
            $start = 0;
            foreach ($kematian_data as $kematian)
            {
                ?>
                <tr>
		    <td><?php echo ++$start ?></td>
		    <td><?php echo $kematian->nkkm ?></td>
		    <td><?php echo $kematian->nikm ?></td>
		    <td><?php echo $kematian->namam ?></td>
		    <td><?php echo $kematian->jklkm ?></td>
		    <td><?php echo $kematian->umurkm ?></td>
		    <td><?php echo $kematian->pkjaan ?></td>
		    <td><?php echo $kematian->wktum ?></td>
		    <td><?php echo $kematian->sbbm ?></td>
		    <td><?php echo $kematian->tmptm ?></td>
		    <td><?php echo $kematian->blokm ?></td>
		    <td><?php echo $kematian->rtm ?></td>
		    <td><?php echo $kematian->rwm ?></td>
		    <td style="text-align:center" width="100px">
			<?php 
			echo anchor(site_url('kematian/read/'.$kematian->Id),'<small class="label bg-green"><i class="fa fa-search"></i></small>'); 
			echo ' '; 
			echo anchor(site_url('kematian/update/'.$kematian->Id),'<small class="label bg-yellow"><i class="fa fa-pencil"></i></small>'); 
			echo ' '; 
			echo anchor(site_url('kematian/delete/'.$kematian->Id),'<small class="label bg-red"><i class="fa fa-trash-o"></i></small>','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
			?>
		    </td>
	        </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
        </div>
        </div>
</section>
<?php 
$this->load->view('template/js');
$this->load->view('template/foot');
?>