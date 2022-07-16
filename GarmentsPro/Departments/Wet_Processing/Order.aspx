﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Departments/Wet_Processing/WetProcessing.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="GarmentsPro.Departments.Wet_Processing.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Wet Processing</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="scriptmanager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="updatepnl" runat="server">
        <ContentTemplate>
            <div class="container" style="padding-top: 50px">
                <div class="row">
                    <center>
            <div class="col-md-12 align-content-center">
                <asp:GridView ID="GridView1" CssClass=" table table-responsive "  HeaderStyle-CssClass="align-content-center" OnRowDataBound="GridView1_RowDataBound" OnRowCommand= "GridView1_RowCommand1" AutoGenerateColumns="False" runat="server">
                    <Columns>
                        
                        <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                        <asp:BoundField DataField="ClientName" HeaderText="Client " />
                        <asp:BoundField DataField="OrderType" HeaderText="Order Type" />
                         <asp:BoundField DataField="Deadline" HeaderText="DeadLine" />
                         <asp:BoundField   DataField="Status" HeaderText="Order Status" />
                        <asp:TemplateField HeaderText="Set Start" HeaderStyle-BackColor="White">
                            <ItemTemplate>
                                <asp:Button ID="btnstart" CommandName="Start"    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"  CssClass="btn btn-success btn-sm " Width="100px" runat="server" Text="Start" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Put on Hold"   HeaderStyle-BackColor="White">
                            <ItemTemplate>
                                <asp:Button ID="btnhold"  CommandName="Hold" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"  CssClass="btn btn-warning btn-sm" Width="100px" runat="server"  Text="Hold" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Completed" HeaderStyle-BackColor="White">
                            <ItemTemplate>
                                <asp:Button ID="btnfinish"  CommandName="Finish"   CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"  CssClass="btn btn-primary btn-sm" Width="100px" runat="server"  Text="Finish" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Label runat="server" ID="txtError" Text=""></asp:Label>
            </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
