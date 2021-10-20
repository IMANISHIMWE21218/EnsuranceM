<%-- 
    Document   : Client
    Created on : Apr 9, 2021, 2:47:54 PM
    Author     : Win 10
--%>

<%@page import="java.util.List"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insurance client</title>
        <script src="bootstrap-5.0.0-beta3-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="DataTables/datatables.min.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
           <nav class="navbar navbat- bg-dark">
            <a href="" class="navbar-brand" >home</a>
            <a href="about.html" class="navbar-brand">About</a>
            <a href="services.html" class="navbar-brand ">Services</a>
            <a href="blog.html" class="navbar-brand">Blog</a>
            <a href="contacts.html" class="navbar-brand" >Contacts</a>

        </nav>


        <div class="row">
            <div class="col-sm-4">

                <form id="clientForm"action="saveclient.jsp" method="POST">
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientName</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control form-control-sm" id="ClientName" name="ClientName">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientDob</label>
                        <div class="col-sm-7">
                            <input type="date" class="form-control form-control-sm" id="ClientDob" name="ClientDob">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientPhone</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control form-control-sm" id="ClientPhone" name="ClientPhone">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientCategory</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control form-control-sm" id="ClientCategory" name="ClientCategory">
                        </div>
                    </div>

                </form>
                <div class="form-group col-sm-11" onclick="addClient()" align="right" >
                    <button type="submit" class="btn btn-outline-success m-3">Save</button>                 

                </div> 
            </div>
        </div> 


        <table id="clientTB" class="table table-hover table-light">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ClientName</th>
                    <th scope="col">ClientDoB</th>
                    <th scope="col">ClientPhone</th>
                    <th scope="col">ClientCategory</th>
                    <th scope="col">Delete</th>
                    <th scope="col">Update</th>
                </tr>
            </thead>
        </table> 
        
        <script src="jquery/jquery.js" type="text/javascript"></script>
        <script src="jquery/jquery.min.js" type="text/javascript"></script>
        <script src="jquery/jquery.validate.min.js" type="text/javascript"></script>
        <script src="DataTables/datatables.min.js" type="text/javascript"></script>
        
        <script>
//var ClientId = null;
                    function getData() {
                        
                        $('#clientTB').dataTable().fnDestroy();
                        $.ajax({
                            url: "listClient.jsp",
                            type: 'GET',
                            dataType: 'JSON',
                            success: function (data) {
                                console.log("data" + data);


                                $('#clientTB').dataTable({
                                    "aaData": data,
                                    "scrollx": true,
                                    "aoColumns": [
                                        {"sTitle": "#", "mData": "ClientId"},
                                        {"sTitle": "ClientName", "mData": "ClientName"},
                                        {"sTitle": "ClientDoB", "mData": "ClientDob"},
                                        {"sTitle": "ClientPhone", "mData": "ClientPhone"},
                                        {"sTitle": "ClientCategory", "mData": "ClientCategory"},
                                        {
                                            "sTitle": "Delete",
                                            "mData": "ClientId",
                                            "render": function (mData)
                                            {
                                                return '<button class="btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-delete bg-success" onclick="getDitails(' + mData + ')" style="color:#fff;">update</button>';
                                            }
                                        },
                                        {
                                            "sTitle": "Edit",
                                            "mData": "ClientId",
                                            "render": function (mData)
                                            {
                                                return '<button class="btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-delete bg-danger" onclick="deleteData(' + mData + ')" style="color:#fff;">delete</button>';
                                            }
                                        }
                                    ]
                                });
                            }
                        });
                    }
                    getData();

                    function addClient() {

                        var isNew = true;
                        var url = "";
                        var method = "";
                        var data = "";
                        if (isNew === true) {
                            url = "saveclient.jsp";
                            method = "POST";
                            data = $("#clientForm").serialize();
                        } else {
                            //for update
                            url = "Clientupdate.jsp";
                            data = $("#clientForm").serialize() + "&ClientId=" + ClientId;
                            method = "POST";

                        }
                        $.ajax({
                            type: method,
                            url: url,
                            dataType: 'TEXT',
                            data: data,
                            success: function (data) {
                                alert("clientAdded");
                                document.querySelector("#ClientName").value = "";
                                document.querySelector("#ClientDob").value = "";
                                document.querySelector("#ClientPhone").value = "";
                                document.querySelector("#ClientCategory").value = ""

                            }
                        });
                        getData();
                    }

                    //delete
                    function deleteData(ClientId) {
                        $.ajax({
                            type: 'POST',
                            url: 'ClientDelete.jsp',
                            data: {"ClientId": ClientId},

                            success: function (data) {

                                getData();
                            }
                        });
                    }

                    function getDitails(ClientId) {
                        isNew = false;
                        $.ajax({
                            type: "POST",
                            url: "listClient.jsp",
                            data: {"ClientId": ClientId},
                            success: function (data) {
//                            alert("loaded");

                                var obj = JSON.parse(data);
                                ClientId = obj.ClientId;

                                document.querySelector("#ClientName").value = obj.ClientName;
                                document.querySelector("#ClientDob").value = obj.ClientDob;
                                document.querySelector("#ClientPhone").value = obj.ClientPhone;
                                document.querySelector("#ClientCategory").value = obj.ClientCategory;


                            }
                        });
                    }
      
                                 ///the jsp table down up the ajax
        </script>
       
         <table class="table table-hover table-dark">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">ClientName</th>
                  <th scope="col">ClientDoB</th>
                  <th scope="col">ClientPhone</th>
                  <th scope="col">ClientCategory</th>
                </tr>
              </thead>
              <% 
                   GeneralDao cldao = new GeneralDao(Client.class);
                   List<Client> listclient = cldao.findAll();
                   for(Client cl: listclient){
              
              %>
              <tbody>
                <tr>
                  
                   <td> <%=cl.getClientId() %> </td>
                  <td> <%=cl.getClientName() %> </td>
                  <td> <%= cl.getClientDob() %> </td>
                  <td> <%= cl.getClientPhone() %> </td>
                  <td> <%= cl.getClientCategory() %> </td>
                </tr>
                
                <% } %>
                
              </tbody>
            </table>
         
    </body>  
</html>
