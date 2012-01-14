/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Angel
 */
public class BookBean extends org.apache.struts.action.ActionForm {

    private int quantity;
    private double price;
    private double total;

    public double getTotal() {
        return total;
    }

    public void setTotal() {
        this.total = roundTwoDecimal(quantity*price);
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    static double roundTwoDecimal(double num) {
        double result = num * 100;
        result = Math.round(result);
        result = result / 100;
        return result;
    }
    
    public BookBean() {
        super();
        // TODO Auto-generated constructor stub
    }
}
