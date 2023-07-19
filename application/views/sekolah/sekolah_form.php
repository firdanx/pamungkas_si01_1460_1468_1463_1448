
        <h2 style="margin-top:0px">Siswa <?php echo $button ?></h2>
        <form action="<?php echo $action; ?>" method="post">
    	    <div class="form-group">
                <label for="varchar">Nama Siswa <?php echo form_error('nama_siswa') ?></label>
                <input type="text" class="form-control" name="nama_siswa" id="nama_siswa" placeholder="Nama Siswa" value="<?php echo $nama_siswa; ?>" />
            </div>
    	    <div class="form-group">
                <label for="varchar">Nama Sekolah <?php echo form_error('nama_sekolah') ?></label>
                <input type="text" class="form-control" name="nama_sekolah" id="nama_sekolah" placeholder="Nama Sekolah" value="<?php echo $nama_sekolah; ?>" />
            </div>
    	    <div class="form-group">
                <label for="varchar">Jurusan <?php echo form_error('jurusank') ?></label>
                <input type="text" class="form-control" name="jurusan" id="jurusan" placeholder="Jurusan" value="<?php echo $jurusan; ?>" />
            </div>
    	    <div class="form-group">
                <label for="varchar">Kelas <?php echo form_error('kelas') ?></label>
                <input type="text" class="form-control" name="kelas" id="kelas" placeholder="Kelas" value="<?php echo $kelas; ?>" />
            </div>
    	    <div class="form-group">
                <label for="visi">Alamat Siswa <?php echo form_error('visi') ?></label>
                <textarea class="form-control" rows="3" name="alamat_siswa" id="alamat_siswa" placeholder="Alamat Siswa"><?php echo $alamat_siswa; ?></textarea>
            </div>
    	    <div class="form-group">
                <label for="varchar">No Telpon <?php echo form_error('no_telpon') ?></label>
                <input type="text" class="form-control" name="no_telpon" id="no_telpon" placeholder="No Telpon" value="<?php echo $no_telpon; ?>" />
            </div>
    	    <input type="hidden" name="id_siswa" value="<?php echo $id_siswa; ?>" /> 
    	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
    	    <a href="<?php echo site_url('sekolah') ?>" class="btn btn-default">Cancel</a>
	   </form>
