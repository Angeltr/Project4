/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Element;

/**
 *
 * @author Angel
 */
public class Compute extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        String[] quantities_str = request.getParameterValues("quantity");
        for (int i = 0; i < quantities_str.length; i++) { 
            if(quantities_str[i].equals("")) {            //elegxw an o xrhsths den exei eisagei posothta
                quantities_str[i] = "0";                  //kai mhdenizw thn antistoixh kataxwrhsh.
            }
        }
        int quantities[] = new int[quantities_str.length];

        //double[] prices;
        //prices = XMLParsePrices("bookstore.xml");
        double total = 0.0; //synoliko poso plhrwmhs
        double[] prices = {30.0, 29.99, 16.5, 39.95, 14.9, 34.8, 18.49};
        ArrayList<BookBean> books = new ArrayList<BookBean>();

        /* Metatroph twn quantities se int */
        for (int i = 0; i < quantities_str.length; i++) {
            quantities[i] = Integer.parseInt(quantities_str[i]);
        } 
          
          
        

        /* Dhmiourgia listas pou periexei ola ta vivlia, ypologismos synolikou posou plhrwmhs
           kai dhmiourgia twn Cookies. */
        for (int i = 0; i < quantities.length; i++) {
            BookBean book = new BookBean();
            book.setQuantity(quantities[i]);
            book.setPrice(prices[i]);
            book.setTotal();
            books.add(book);
            total = total + book.getPrice() * book.getQuantity();
            Cookie qcook = new Cookie("quaCookies" + i, quantities_str[i]);
            qcook.setMaxAge(60 * 60 * 24 * 7);
            response.addCookie(qcook);
            Cookie tcook = new Cookie("totalCookies" + i, Double.toString(book.getTotal()));
            tcook.setMaxAge(60 * 60 * 24 * 7);
            response.addCookie(tcook);
        }
        total = roundTwoDecimal(total);

        request.setAttribute("books", books);
        request.setAttribute("total", total);

        Cookie totalCook = new Cookie("finalTotal", Double.toString(total));
        totalCook.setMaxAge(60 * 60 * 24 * 7);
        response.addCookie(totalCook);

        return mapping.findForward(SUCCESS);
    }

    private static double[] XMLParsePrices(String fileName) {
        double[] prices = null;
        try {
            File file = new File(fileName);
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document doc = db.parse(file);
            doc.getDocumentElement().normalize();
            NodeList nodeLst = doc.getElementsByTagName("book");

            prices = new double[nodeLst.getLength()];

            for (int i = 0; i < nodeLst.getLength(); i++) {
                Node fstNode = nodeLst.item(i);
                Element fstElmnt = (Element) fstNode;
                NodeList fstNmElmntLst = fstElmnt.getElementsByTagName("price");
                Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
                NodeList fstNm = fstNmElmnt.getChildNodes();
                prices[i] = Double.parseDouble(((Node) fstNm.item(0)).getNodeValue());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return prices;
    }

    static double roundTwoDecimal(double num) {
        double result = num * 100;
        result = Math.round(result);
        result = result / 100;
        return result;
    }
}
