$("#quit").click(function () {
    $("#concreteclient").attr("hidden","hidden");
})
$("#deleteone").click(function(){

    var r=confirm("确定删除该条信息?")
    if(r==true){

        var id=$("#customerid").val();

        $(".onechoice[id='"+id+"']").remove();
        $("#concreteclient").attr("hidden","hidden");
        $.get("deleteone",{"id":id},function () {


        })
    }
})


$("#clientone").find('input,textarea','select').attr('readonly','readonly')
$("#updateready").click(function () {

    $("#updateready").attr("hidden","hidden");
    $("#updatedone").removeAttr("hidden");
    $("#clientone").find('input,textarea').removeAttr('readonly')
})

$("#updatedone").click(function () {

    var clientone=$("#clientone").serialize()

    $.ajax({
        type:"post",
        url: "updateone",
        data: clientone,
        datatype:JSON,
        success: function (cli){
            var cuslevel;
            var customerproperties;
            var customertype;
            if(cli.customerlevel==1){ cuslevel="潜在客户" }
            if(cli.customerlevel==2){  cuslevel="普通客户" }
            if(cli.customerlevel==3){   cuslevel="Vip客户"}
            if(cli.customerlevel==4){ cuslevel="代理商" }
            if(cli.customerlevel==5){  cuslevel="合作伙伴" }
            if(cli.customerlevel==6){  cuslevel="失效客户" }
            if(cli.customerproperties==1){ cuslevel="服务业" }
            if(cli.customerproperties==2){  cuslevel="制造业" }
            if(cli.customertype==1){ cuslevel="国有企业" }
            if(cli.customertype==2){  cuslevel="私营企业" }
            if(cli.customertype==3){   cuslevel="外资企业"}
            if(cli.customertype==4){ cuslevel="合资企业" }

            $(".onechoice[id='"+cli.customerid+"']").empty();
            $(".onechoice[id='"+cli.customerid+"']").append(
                "<td >"+cli.customerid+"</td>"+
                "<td >"+cli.customername+"</td>"+
                "<td >"+customerproperties+"</td>"+
                "<td >"+customertype+"</td>"+
                "<td >"+cuslevel+"</td>"+
                "<td >"+cli.register+"</td>"+
                "<td ><button class='concrete' value='"+cli.customerid+"' >具体信息</button></td>"
            )
        }
    })
    $("#updatedone").attr("hidden","hidden");
    $("#updateready").removeAttr("hidden");
    $("#clientone").find('input,textarea').attr('readonly','readonly')

})




/*$("#submit").click(function () {

    var client = $("#form").serialize();

    client = decodeURIComponent(client, true);

    $.ajax({
        type:"post",
        url: "selectclient",
        data: {"client":client},

        success: function (clientone) {

    console.log("selectclient"+clientone)
            //var a = $("#clientlist tr");
            //$("#clientlist").remove(a);
            $("#clientlist").empty();

            $("#clientlist").append("<tr>" +
                "<th>客户ID</th>" +
                "<th>客户名称</th>" +
                "<th>客户性质</th>" +
                "<th>客户类型</th>" +
                "<th>客户级别</th>" +

                "<th>登记人</th>" +
                "<th>操作</th>" +

                "</tr>");

            for (var i = 0; i<clientone.list.length; i++){
                var level;
                switch (clientone.list[i].customerlevel) {
                    case 1:
                        level='潜在客户';
                        break;
                    case 2:
                        level='普通客户';
                        break;
                    case 3:
                        level='VIP客户';
                        break;
                    case 4:
                        level='代理商';
                        break;
                    case 5:
                        level='合作伙伴';
                        break;
                    case 6:
                        level='失效客户';
                        break;
                }
                $("#clientlist").append(
                    "<tr  id='"+clientone.list[i].customerid+"' class='onechoice'>"+
                    "<td >"+clientone.list[i].customerid+"</td>"+
                    "<td >"+clientone.list[i].customername+"</td>"+
                    "<td >"+clientone.list[i].customerproperties+"</td>"+
                    "<td >"+clientone.list[i].customertype+"</td>"+
                    "<td >"+level+"</td>"+
                    "<td >"+clientone.list[i].register+"</td>"+
                    "<td ><button class='concrete' value='"+clientone.list[i].customerid+"' >具体信息</button></td>"+
                    "</tr>"

                )
                $(".concrete").val(clientone[i].customerid);

            }

        }
    })
})*/
$(document).on("click",".concrete",function () {
    $("#concreteclient").removeAttr("hidden");
    var id=$(this).val();

    $.get("findone",{"id":id},function (customer) {
        $("#customerid").val(customer.customerid)
        $("#customername").val(customer.customername)
        $("#customerproperties").val(customer.customerproperties)
        $("#customertype").val(customer.customertype)
        $("#customerlevel").val(customer.customerlevel)
        $("#customercompanywebsize").val(customer.customercompanywebsize)
        $("#customercompanyphone").val(customer.customercompanyphone)
        $("#register").val(customer.register)
        $("#customeraddress").val(customer.customeraddress)
        $("#customerprovinces").val(customer.customerprovinces)
        $("#customercity").val(customer.customercity)
        $("#customercode").val(customer.customercode)
        $("#openbank").val(customer.openbank)
        $("#bankaccount").val(customer.bankaccount)
        $("#customersource").val(customer.customersource)
        $("#noteinformation").val(customer.noteinformation)
    })
})