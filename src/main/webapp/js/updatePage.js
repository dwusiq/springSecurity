function queryUser() {
    var userId = $("#ID").val();
    $.ajax({
        url:"/mybatisStudy/userManage/queryUserById.json",
        type:"get",
        data:{id:userId},
        success:function(data){
                $("#inputId").val(data.id);
                $("#username").val(data.username);
                $("#userage").val(data.userage);
        }
    });
}