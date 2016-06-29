//
//  ViewController.swift
//  wx's calculator
//
//  Created by wx on 16/6/27.
//  Copyright © 2016年 wx's calculator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var temp=0.0
    var flag:Int=0;
    var point=true;
  //  var num1:Double=0;
   // var num2:Double=0;
  //  var equal:Double=0;
    
    @IBOutlet weak var wx: UITextField!
    
    @IBAction func wx0(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"";
        }
        else
        {
            wx.text=(wx.text)!+"0";
        }
    }
    
    @IBAction func wx1(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"1";
        }
        else
        {
            wx.text=(wx.text)!+"1";
        }
    }

    @IBAction func wx2(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"2";
        }
        else
        {
            wx.text=(wx.text)!+"2";
        }
    }

    @IBAction func wx3(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"3";
        }
        else
        {
            wx.text=(wx.text)!+"3";
        }
    }
    
    @IBAction func wx4(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"4";
        }
        else
        {
            wx.text=(wx.text)!+"4";
        }
    }
    
    @IBAction func wx5(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"5";
        }
        else
        {
            wx.text=(wx.text)!+"5";
        }
    }
    
    @IBAction func wx6(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"6";
        }
        else
        {
            wx.text=(wx.text)!+"6";
        }
    }
    
    @IBAction func wx7(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"7";
        }
        else
        {
            wx.text=(wx.text)!+"7";
        }
    }
    @IBAction func wx8(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"8";
        }
        else
        {
            wx.text=(wx.text)!+"8";
        }
    }
    @IBAction func wx9(sender: AnyObject) {
        if(wx.text=="0")
        {
            wx.text=(wx.text)!+"9";
        }
        else
        {
            wx.text=(wx.text)!+"9";
        }
    }
    
    
    @IBAction func add(sender: AnyObject) {
        if flag==0{
            temp = (Double)(wx.text!)!
            wx.text=""
        }
        flag=1
    }
    
    @IBAction func sub(sender: AnyObject) {
        if flag==0{
            temp = (Double)(wx.text!)!
            wx.text=""
        }
        flag=2
    }
    
    @IBAction func muliply(sender: AnyObject) {
        if flag==0{
            temp = (Double)(wx.text!)!
            wx.text=""
        }
        flag=3
    }
    
    @IBAction func divide(sender: AnyObject) {
        if flag==0{
            temp = (Double)(wx.text!)!
            wx.text=""
        }
        flag=4
    }
    
    @IBAction func equal(sender: AnyObject) {
        switch flag{
        case 1:
            temp=temp+(Double)(wx.text!)!
            wx.text="\(temp)"
        case 2:
            temp=temp-(Double)(wx.text!)!
            wx.text="\(temp)"
        case 3:
            temp=temp*(Double)(wx.text!)!
            wx.text="\(temp)"
        case 4:
            if (Double)(wx.text!)!==0
            {
                wx.text="0不能为除数"
            }
            else{
                temp=temp/(Double)(wx.text!)!
                wx.text="\(temp)"
                }
        default:
            break
            }
    }
   
    @IBAction func clean(sender: AnyObject) {
        wx.text=""
        temp=0
        flag=0
    }

    @IBAction func minussign(sender: AnyObject) {
        temp=(Double)(wx.text!)!
        temp=(-temp)
        wx.text="\(temp)"
    }
    
    @IBAction func percent(sender: AnyObject) {
        var x=0.0
        
        
        if  flag==1||flag==2||flag==3||flag==4{
            switch  flag{
            case 1:
                x=temp*(Double)(wx.text!)!/100
                temp=temp+x
                wx.text="\(temp)"
            case 2:
                x=temp*(Double)(wx.text!)!/100
                temp=temp-x
                wx.text="\(temp)"
                
            case 3:
                x=temp*(Double)(wx.text!)!/100
                temp=temp*x
                wx.text="\(temp)"
            case 4:
                if(Double)(wx.text!)!==0
                {
                    wx.text="o不能为除数"
                }
                else{
                    x=temp*(Double)(wx.text!)!/100
                    temp=temp/x
                    wx.text="\(temp)"                }
            default:
                break
            }
        }
        else{
            temp=(Double)(wx.text!)!
            temp=temp/100
            wx.text="\(temp)"}
    }

    @IBAction func square(sender: AnyObject) {
        temp=(Double)(wx.text!)!
        temp=temp*temp
        wx.text="\(temp)"
    }

    @IBAction func root(sender: AnyObject) {
        temp=(Double)(wx.text!)!
        temp=sqrt(temp)
        wx.text="\(temp)"
    }

    @IBAction func back(sender: AnyObject) {
        var s=""
        s = wx.text!
        s.removeAtIndex(s.endIndex.predecessor())
        wx.text=s
    }

    @IBAction func reciprocal(sender: AnyObject) {
        temp=(Double)(wx.text!)!
        temp=1/temp
        wx.text="\(temp)"
    }

    @IBAction func decimal(sender: AnyObject) {
        if point==true{
        if( wx.text=="0")
        {
            wx.text=""
            wx.text=(wx.text)!+"."
            
        }
        else
        {
            wx.text=(wx.text)!+".";
        }
            point=false
        }
    }

    }


















