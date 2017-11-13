<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Test extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Test_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $test = $this->Test_model->get_all();

        $data = array(
            'test_data' => $test
        );

        $this->load->view('test_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Test_model->get_by_id($id);
        if ($row) {
            $data = array(
		'testid' => $row->testid,
		'name' => $row->name,
	    );
            $this->load->view('test_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('test'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('test/create_action'),
	    'testid' => set_value('testid'),
	    'name' => set_value('name'),
	);
        $this->load->view('test_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'name' => $this->input->post('name',TRUE),
	    );

            $this->Test_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('test'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Test_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('test/update_action'),
		'testid' => set_value('testid', $row->testid),
		'name' => set_value('name', $row->name),
	    );
            $this->load->view('test_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('test'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('testid', TRUE));
        } else {
            $data = array(
		'name' => $this->input->post('name',TRUE),
	    );

            $this->Test_model->update($this->input->post('testid', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('test'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Test_model->get_by_id($id);

        if ($row) {
            $this->Test_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('test'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('test'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('name', 'name', 'trim|required');

	$this->form_validation->set_rules('testid', 'testid', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "test.xls";
        $judul = "test";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
	xlsWriteLabel($tablehead, $kolomhead++, "Name");

	foreach ($this->Test_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->name);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=test.doc");

        $data = array(
            'test_data' => $this->Test_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('test_doc',$data);
    }

}

/* End of file Test.php */
/* Location: ./application/controllers/Test.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2017-01-12 05:00:28 */
/* http://harviacode.com */