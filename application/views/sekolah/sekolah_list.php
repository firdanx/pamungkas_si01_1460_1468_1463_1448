
        <h2 style="margin-top:0px">Siswa List</h2>
        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-4">
                <?php echo anchor(site_url('sekolah/create'),'Create', 'class="btn btn-primary"'); ?>
            </div>
            <div class="col-md-4 text-center">
                <div style="margin-top: 8px" id="message">
                    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                </div>
            </div>
            <div class="col-md-1 text-right">
            </div>
            <div class="col-md-3 text-right">
                <form action="<?php echo site_url('sekolah/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('sekolah'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                </form>
            </div>
        </div>
        <table class="table table-bordered" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
        		<th>Nama Siswa</th>
        		<th>Alamat Siswa</th>
        		<th>Action</th>
                    </tr><?php
                    foreach ($siswa_data as $siswa)
                    {
                    ?>
            <tr>
    			<td width="80px"><?php echo ++$start ?></td>
    			<td><?php echo $siswa->nama_siswa ?></td>
    			<td><?php echo $siswa->alamat_siswa ?></td>
    			<td style="text-align:center" width="200px">
    				<?php 
    				echo anchor(site_url('sekolah/read/'.$siswa->id_siswa),'Read', array('class'=>'btn btn-primary btn-sm')); 
    				echo ' | '; 
    				echo anchor(site_url('sekolah/update/'.$siswa->id_siswa),'Update', array('class'=>'btn btn-default btn-sm')); 
    				echo ' | '; 
    				echo anchor(site_url('sekolah/delete/'.$siswa->id_siswa),'Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
    				?>
    			</td>
		  </tr>
                <?php
                }
                ?>
        </table>
        <div class="row">
            <div class="col-md-6">
                <a href="#" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
		<?php echo anchor(site_url('sekolah/excel'), 'Excel', 'class="btn btn-primary"'); ?>
	    </div>
            <div class="col-md-6 text-right">
                <?php echo $pagination ?>
            </div>
        </div>
