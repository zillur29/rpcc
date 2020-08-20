<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Officefunds extends Admin_Controller
{
	public function __construct(){
		parent::__construct();
		$this->not_logged_in();
		$this->data['page_title'] = 'Office Fund';
		$this->load->model('model_officefund');
		$this->load->model('model_budget');
	}

	/*
	* It only redirects to the manage budgets page
	*/
	public function index(){
		if(!in_array('viewOfficeFund', $this->permission)) {
            redirect('dashboard', 'refresh');
        }
		$this->data['page_title'] = 'Manage Office Fund';
		$this->render_template('officefunds/index', $this->data);
	}

	/*
	* Fetch Budget  data
	* this function is called from the datatable ajax function
	*/
	public function fetchOfficeFundData(){
		$result = array('data' => array());
        $data = $this->model_officefund->getOfficeFundData();
        $i=0;
		foreach ($data as $key => $value) {
            $i++;
			$buttons = '';
			if(in_array('viewOfficeFund', $this->permission)) {
				//.base_url('orders/printDiv/'.$value['id']).
				$buttons.= '<a target="__blank" href="'.base_url('officefunds/officefundsDetails/'.$value['id']).'" title="View Details" class="btn btn-primary"><i class="fa fa-eye" aria-hidden="true"></i></a>';
			}

			if(in_array('updateOfficeFund', $this->permission)) {
				$buttons .= ' <a href="'.base_url('officefunds/update/'.$value['id']).'"  title="Edit Budget"  class="btn btn-warning"><i class="fa fa-pencil"></i></a>';
			}

			if(in_array('deleteOfficeFund', $this->permission)) {
				$buttons .= ' <button type="button" class="btn btn-danger" onclick="removeFunc('.$value['id'].')" title="Delete Budget" data-toggle="modal" data-target="#removeModal"><i class="fa fa-trash"></i></button>';
			}

			$result['data'][$key] = array(
				$i,
                $value['month_name'],
                $value['of_desc'],
				$value['total_amout'],
				$value['status'],
				$value['created_at'],
				$buttons
			);
		} // /foreach

		echo json_encode($result);
	}

	/*
	* Create Budget
	*/
	public function create(){
		if(!in_array('createOfficeFund', $this->permission)) {
            redirect('dashboard', 'refresh');
        }

		$this->data['page_title'] = 'Add Office Fund';
		$this->form_validation->set_rules('of_desc', 'Fund Description', 'trim|required');
		$this->form_validation->set_rules('month_name', 'Month Name', 'trim|required');
		$this->form_validation->set_rules('year', 'Year', 'trim|required');
        if ($this->form_validation->run() == TRUE) {
        	$success_id = $this->model_officefund->create();
        	if($success_id) {
        		$this->session->set_flashdata('success', 'Successfully created');
        		redirect('officefunds/', 'refresh');
        	}
        	else {
        		$this->session->set_flashdata('errors', 'Error occurred!!');
        		redirect('officefunds/', 'refresh');
        	}
        }
        else {
        	$this->data['account_head'] = $this->model_budget->getBudgetDetailsReport(12);
            $this->render_template('officefunds/create', $this->data);
        }
	}



	/*
	* Get active camp data
	*/
	public function getCampDataRow()
	{
		$products = $this->model_camps->getActiveCampsData();
		echo json_encode($products);
	}



	/*
	* If the validation is not valid, then it redirects to the edit orders page
	* If the validation is successfully then it updates the data into the database
	* and it stores the operation message into the session flashdata and display on the manage group page
	*/
	public function update($id){
		if(!in_array('updateOfficeFund', $this->permission)) {
            redirect('dashboard', 'refresh');
        }
		if(!$id) {
			redirect('dashboard', 'refresh');
		}

		$this->data['page_title'] = 'Update Office Fund ';
		$this->form_validation->set_rules('of_desc', 'Fund Description', 'trim|required');
		$this->form_validation->set_rules('month_name', 'Month Name', 'trim|required');
		$this->form_validation->set_rules('year', 'Year', 'trim|required');

        if ($this->form_validation->run() == TRUE) {
        	$update = $this->model_officefund->update($id);
        	if($update == true) {
        		$this->session->set_flashdata('success', 'Successfully updated');
        		redirect('officefunds/update/'.$id, 'refresh');
        	}
        	else {
        		$this->session->set_flashdata('errors', 'Error occurred!!');
        		redirect('officefunds/update/'.$id, 'refresh');
        	}
        }
        else {
            // false case

			$result = array();
			$fund_master = $this->model_officefund->getOfficeFundData($id);
    		$result['fund_master'] = $fund_master;
			$fund_details = $this->model_officefund->getOfficeFundDetailsData($fund_master['id']);
    		foreach($fund_details as $k => $v) {
    			$result['fund_details'][] = $v;
			}
    		$this->data['officefunds'] = $result;
			$this->data['account_head'] = $this->model_budget->getBudgetDetailsReport(12);
            $this->render_template('officefunds/edit', $this->data);
        }
	}



	/*
	*  Print Budget  Report
	*/
	public function printDiv($id)
	{
		if(!in_array('viewOfficeFund', $this->permission)) {
            redirect('dashboard', 'refresh');
        }

		if($id) {
			$budget_master=$this->db->query(" SELECT * FROM cg_master WHERE id = $id")->result();
			$budget_data=$this->db->query("
									SELECT
										cg_details.no_of_child,
										cg_details.no_of_care,
										cg_details.amount,
										camp_info.camp_id,
										camp_info.upailla,
										camp_info.carea
									FROM
										cg_details
									LEFT JOIN camp_info ON camp_info.id = cg_details.camp_id
									WHERE
										cg_details.cg_id =	$id
							")->result();

							/* echo '<pre>';
							print_r($budget_data);
							echo '</pre>'; */

			?>
			<!DOCTYPE html>
			<html lang="en">
			<head>
			  <title>Budget  Report</title>
			  <meta charset="utf-8">
			  <meta name="viewport" content="width=device-width, initial-scale=1">
			  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

			  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			</head>
			<body>
			<br>
			<br>
			<div class="container center">
			  <div class="row">
				<table class="table table-border">
					<tr>
						<td><img src="<?php echo base_url();?>/assets/images/budgets/image001.jpg"></td>
						<td>
							<p>
								গণপ্রজাতন্ত্রীবাংলাদেশ সরকার<br>
								সমাজসেবা অধিদপ্তর<br>
								রোহিঙ্গা শিশুসুরক্ষা কার্যক্রম<br>
								সোনারপাড়া, উখিয়া কক্সবাজার
							</p>
						</td>
						<td><img src="<?php echo base_url();?>/assets/images/budgets/image002.jpg"></td>

					</tr>
				</table>

				<!--table class="table table-border">
					<thead>
						<tr>
							<th>ক্রমিক নং</th>
							<th>ক্যাম্প নং</td>
							<th>উপকারভোগী  শিশুর সংখ্যা</th>
							<th>ফোস্টার  কেয়ারগিবার সংখ্যা</th>
							<th>নগদ সহায়তার পরিমান</th>
							<th>মাসের সংখ্যা</th>
							<th>নগদ সহায়তার বিতরনের জন্য অর্থ সহায়তা</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>ক্রমিক নং</td>
							<td>ক্যাম্প নং</td>
							<td>উপকারভোগী  শিশুর সংখ্যা</td>
							<td>ফোস্টার  কেয়ারগিবার সংখ্যা</td>
							<td>নগদ সহায়তার পরিমান</td>
							<td>মাসের সংখ্যা</td>
							<td>নগদ সহায়তার বিতরনের জন্য অর্থ সহায়তা</td>
						</tr>
					</tbody>
				</table-->
				<table class="table table-border">
					<?php if(!empty($budget_master)): ?>
					<thead>
						<tr>
							<th>Month Name : <?php echo $budget_master[0]->month_name;?></th>
							<th>Description : <?php echo $budget_master[0]->cg_desc;?></th>
							<th>Total Amount : <?php echo $budget_master[0]->total_amout;?></th>
							<th>Created Date : <?php echo $budget_master[0]->created_at;?></th>
							<th colspan="2"></th>
						</tr>
					</thead>
					<?php endif; ?>
					<thead>
						<tr>
							<th>Upzilla Name</th>
							<th>Area Name</th>
							<th>Camp ID</th>
							<th>No. of Child</th>
							<th>No. of Care</th>
							<th>Amount</th>
						</tr>
					</thead>
					<tbody>
						<?php
							if(!empty($budget_data)):
								foreach($budget_data as $budget_value):
									//print_r($budget_value);
									?>
										<tr>
											<td><?php echo $budget_value->upailla; ?></td>
											<td><?php echo $budget_value->carea; ?></td>
											<td><?php echo $budget_value->camp_id; ?></td>
											<td><?php echo $budget_value->no_of_child; ?></td>
											<td><?php echo $budget_value->no_of_care; ?></td>
											<td><?php echo $budget_value->amount; ?></td>
										</tr>
									<?php
								endforeach;
							else:

						?>
						<tr>
							<th colspan="6" >No Data Found</th>
						</tr>
						<?php endif; ?>
					</tbody>
				</table>
			</div>
			</body>
			</html>
			<?php
		}
	}


	public function budgetDetails($id){
		if(!in_array('viewOfficeFund', $this->permission)) {
            redirect('dashboard', 'refresh');
		}

		if($id) {
			$this->data['page_title'] = 'Budget Report';
			$result = array();
        	$budget_master = $this->model_budget->getBudgetData($id);
    		$result['budget_master'] = $budget_master;
    		$budget_details = $this->model_budget->getBudgetDetailsReport($id);
			/* echo '<pre>';
			print_r($result);
			echo '</pre>';
			exit;  */
    		foreach($budget_details as $k => $v) {
    			$result['budget_details'][] = $v;
    		}
			$this->data['budgets'] = $result;

			$this->render_template('budget/viewOfficeFundDetails', $this->data);
		}
	}

}