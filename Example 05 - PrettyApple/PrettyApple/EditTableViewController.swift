//
//  EditTableViewController.swift
//  Pretty Apple
//
//  Created by Duc Tran on 3/30/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class EditTableViewController: UITableViewController, UITextFieldDelegate, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // Model:
    var product: Product?
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UITextField!
    @IBOutlet weak var productDescriptionTextView: UITextView!

    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Product"
        productImageView.image = product?.image
        productTitleLabel.text = product?.title
        productDescriptionTextView.text = product?.description
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        product?.title = productTitleLabel.text!
        product?.description = productDescriptionTextView.text
        product?.image = productImageView.image!
    }
    
    // MARK: - UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // dismiss the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: - UIScrollViewDelegate
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        productDescriptionTextView.resignFirstResponder()
    }
    
    // MARK: - Table View Interaction
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.section == 0 && indexPath.row == 0 {
            return indexPath
        } else {
            return nil
        }
    }
    
    // MARK: - Image Picker Controller
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 && indexPath.row == 0
        {
            let picker = UIImagePickerController()
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary  // .Camera
            picker.allowsEditing = false
            picker.delegate = self
            present(picker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        product?.image = image
        productImageView.image = image
        dismiss(animated: true, completion: nil)
    }
    
}





























