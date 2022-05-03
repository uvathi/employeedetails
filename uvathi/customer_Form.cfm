<!DOCTYPE html>
<html>
    <head>
        <style>
            body
            {
                background-color: mistyrose;
            }
        h4
        {
            text-align: center;
            padding: 30px;
            color: olive;
            size: 60px;
        }
        tr:nth-child(even)
        {
            background-color: thistle;
        }
        tr:nth-child(odd)
        {
            background-color: plum;
        }
        td:nth-child(odd)
        {
        background-color: powderblue;
        }
        th, td {
  padding: 15px;
}
tr, td{
    padding: 15px;
}
        </style>
    </head>
    <body>
        <h4> STUDENT REGISTRATION FORM </h4>

        <form action="insert_action.cfm" method="post"> 
        <label for="fname">FIRST NAME   </label>
        <input type="text" id="fname" name="fname">
        <br><br>
        <label for="lastname">LAST NAME  </label>
        <input type="text" id="lastname" name="lastname">
        <br>
        <br>
        <label for="gender">GENDER  </label>
        <input type="radio" id="gender" name="gender" value="MALE">
        <label for="male" >MALE</label>
    
        <input type="radio" id="gender" name="gender" value="FEMALE">
        <label for="female">FEMALE</label>
        <br>
        <br>
        <label for="stream">STREAM  </label>
        <input type="checkbox" id="c1" name="c1" value="science">
        <label for="science">SCIENCE</label>
        
        <input type="checkbox" id="c1" name="c1" value="maths">
        <label for="maths">MATHS</label>
        
        <input type="checkbox" id="c1" name="c1" value="computer">
        <label for="computer">COMPUTER</label>
        <br>
        <br>
        <label for="domain" >MEDIUM</label>
    <select id="d1" name="domain">
        <option value="TAMIL"> TAMIL</option>
        <option value="english">ENGLISH</option>
    </select>
    <br>
    <br>
        <label for="f1">SELECT A FILE  </label>
        <input type="file" id="f1" name="f1" >
        
        <br>
        <br>

    
    <br>
    <br>
        <input type="submit" value="SUBMIT">
        <input type="reset" value="RESET">
        

        <table align="center">
            <tr>
                <th>NAME
                    <th>AGE
                        <th>QUALIFICATION
                            <th>10TH MARK
                            <th>12TH MARK
                                <th>PASSPORT SIZE PHOTO
                                </th>
                        </tr>
            <tr >
                <td>UVATHI</td>
                <td>25</td>
                <td>BE</td>
                <td>490</td>
                <td>800</td>
               <td>
                   <a href=""> <img src="E:\uvathi\f1.jpg" height="50" width="60">
                </a>
            </td>
            </tr>
            <tr>
                <td>PRIYA</td>
                <td>23</td>
                <td>BCA</td>
                <td>389</td>
                <td>799</td>
               <td><a href=""> <img src="E:\uvathi\f1.jpg" height="50" width="60"></a>
            </td>
            </tr>
            <tr>
                <td >KEERTHI</td>
                <td>24</td>
                <td>BE</td>
                <td>467</td>
                <td>699</td>
               <td> <a href=""><img src="E:\uvathi\f1.jpg" height="50" width="60">
            </a>
            </td>
            </tr>
            <tr>
                <td>SASI</td>
                <td>28</td>
                <td>MCA</td>
                <td>467</td>
                <td>799</td>

               <td><a href=""> <img src="E:\uvathi\f1.jpg" height="50" width="60">
            </a>
            </td>
            </tr>
            <tr>
                <td>ANU</td>
                <td>26</td>
                <td>BSC</td>
                <td>450</td>
                <td>700</td>
               <td><a href=""> <img src="E:\uvathi\f1.jpg" height="50" width="60">
            </a>
            </td>
            </tr>
            </table>
    
    </form>
    </body>
</html>
