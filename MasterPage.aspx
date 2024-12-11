<%@ Master Language="C#" AutoEventWireup="true" CodeFile="MasterPage.master.cs" Inherits="MasterPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title><asp:ContentPlaceHolder ID="TitleContent" runat="server" /></title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }
        .header {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 15px 20px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .header .nav-links {
            display: flex;
            align-items: center;
        }
        .header a {
            color: white;
            text-decoration: none;
            margin-right: 40px;
            font-weight: bold;
            font-size: 18px;
        }
        .header a.main-btn {
            font-size: 22px;
        }
        .header .auth-buttons {
            display: flex;
            align-items: center;
        }
        .header .auth-buttons button {
            margin-right: 40px;
            padding: 8px 10px;
            font-size: 14px;
            border: none;
            background-color: #ff7043;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .header .auth-buttons button:hover {
            background-color: #e64a19;
        }
        .main-banner {
            height: 50vh; 
            background: url('images/booklib.jpg') no-repeat center center;
            background-size: cover; /* 배경 이미지가 화면을 꽉 채움 */
            background-attachment: fixed; /* 스크롤 시 배경 고정 */
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .main-banner h1 {
            color: white;
            font-size: 48px;
            font-weight: bold;
            text-align: center;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }
        .content {
            padding: 100px 20px;
        }
        .book-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 40px 0;
        }
        .book-item {
            background: white;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            text-align: center;
        }
        .book-item img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .book-item h3 {
            font-size: 18px;
            margin: 10px 0;
        }
        .book-item p {
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="nav-links">
                <a href="Default.aspx" class="main-btn">책장</a>
                <a href="Community.aspx">커뮤니티</a>
                <a href="RecommendedBooks.aspx">추천 책장</a>
                <a href="News.aspx">책장 소식</a>
            </div>
            <div class="auth-buttons">
                <button type="button" onclick="location.href='Login.aspx'">로그인</button>
                <button type="button" onclick="location.href='Register.aspx'">회원가입</button>
            </div>
        </div>
        <div class="content">
            <asp:ContentPlaceHolder ID="MainContent" runat="server" />
        </div>
    </form>
</body>
</html>
