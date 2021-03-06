<?php 

class Dashboard extends Admin_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->not_logged_in();

		$this->data['page_title'] = 'Dashboard';
		
		$this->load->model('model_camps');
		$this->load->model('model_orders');
		$this->load->model('model_users');
	}

	/* 
	* It only redirects to the manage category page
	* It passes the total product, total paid orders, total users, and total stores information
	into the frontend.
	*/
	public function index()
	{
		$this->data['total_camps'] = $this->model_camps->countTotalCamps();
		$this->data['total_upzilla'] = $this->model_camps->countTotalUpzilla();
		$this->data['total_users'] = $this->model_users->countTotalUsers();
		$user_id = $this->session->userdata('id');
		$is_admin = ($user_id == 1) ? true :false;
		$this->data['is_admin'] = $is_admin;
		$this->render_template('dashboard', $this->data);
	}
}