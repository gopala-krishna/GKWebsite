<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListViewRemote.aspx.cs" Inherits="TestPrototypes_ListViewRemote" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

<div id="listView"></div>
<div id="pager" class="k-pager-wrap"></div>
    
<script type="text/x-kendo-template" id="template">
<div class="product">
    <img src="#=ImgUrl#" onclick ="javascript:location.href='#=LinkUrl#'"/>
</div>
</script>


<script type="text/JavaScript">
        $(function () {
            $.ajax({
                type: "post",
                url: "ListViewRemote.aspx/GetPlaylist",
                contentType: "application/json",
                dataType: "json",
                success: function (result) {
                    var jsonResult = JSON.parse(result.d).BScores;
                    var dataSource = new kendo.data.DataSource({
                        data: jsonResult,
                        pageSize:20
                    });

                    $("#pager").kendoPager({
                        dataSource: dataSource
                    });
                    $("#listView").kendoListView({
                        dataSource: dataSource,
                       //template: '<img src="#=ImgUrl#"/>'
                         template: kendo.template($("#template").html())
                    });
                }
            });
        });

</script>
</asp:Content>

