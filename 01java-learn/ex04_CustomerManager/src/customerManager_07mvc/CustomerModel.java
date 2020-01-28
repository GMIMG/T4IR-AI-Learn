package customerManager_07mvc;

import java.util.ArrayList;

public class CustomerModel extends ArrayList<Customer> {
	private static CustomerModel sCustomerController;
	
	private CustomerModel() {
	}
	
	public static CustomerModel getInstance() {
		if (sCustomerController == null)
			sCustomerController = new CustomerModel();
		return sCustomerController;
	}
	
}
