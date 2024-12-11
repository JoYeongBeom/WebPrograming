<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>
<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
    도서 리뷰 플랫폼
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 배너 -->
    <div class="main-banner">
        <h1>함께 읽고 나누는 독후 활동</h1>
    </div>

    <!-- 책 리스트 -->
    <div class="book-list">
        <asp:Repeater ID="BooksRepeater" runat="server">
            <ItemTemplate>
                <div class="book-item">
                    <img src='<%# Eval("ImagePath") %>' alt="Book Image" />
                    <h3><%# Eval("Title") %></h3>
                    <p>저자: <%# Eval("Author") %></p>
                    <p><i><%# Eval("Comment") %></i></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
