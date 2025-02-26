<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="user_homepage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="home" id="home">

   <div class="swiper home-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide" style="background: url(images/home-slide-1.jpg) no-repeat;">
            <div class="content">
               <span>आप मन के एक नज़र </span>
               <h3  style="font-family: 'Kruti Dev 240';> जिंदगी ला अपन स्वादानुसार जीवव</h3>
               <a href="#" class="btn">get started</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background: url(images/home-slide-2.jpg) no-repeat;">
            <div class="content">
               <span>स्वादिष्ट व्यंजन</span>
               <h3>morning moment</h3>
               <a href="#" class="btn">get started</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background: url(images/home-slide-3.jpg) no-repeat;">
            <div class="content">
               <span>स्वादिष्ट व्यंजन</span>
               <h3>authentic kitchen</h3>
               <a href="#" class="btn">get started</a>
            </div>
         </div>

      </div>

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>

   </div>

</section>

<!-- home section ends -->

<!-- about section starts  -->

<section class="about" id="about">

   <div class="image">
      <img src="images/about-img.png" alt="">
   </div>

   <div class="content">
      <h3 class="title"><font-family: 'Kruti Dev 240'>गढ़ कलेवा मा आप मन के स्वागत हे |</font-family:></h3>
      <p><font-family: Kruti Dev 040">तोर महिमा हावय <Br >भारीधान के कटोरा <br>भावय भारत माँ के दुलारी ||  </font-family:></p>
      <P>
         <font-family: 'Kruti Dev 040'>नदिया नरवा डोंगरी पहाड़ी
         कोरा म तोर इतरावय
         हरियर हरियर खेती डोली
         पुरवइय्या संग लहरावय
         अमरइय्या म कुहकत हे
         मनमोहनी कोयलिया कारी
         मोर छत्तीसगढ़ महातारी
         तोर महिमा हावय भारी ||
         </font-family:>
      </P>
      <!--<a href="#" class="btn">read more</a>-->
      <div class="icons-container">
         <div class="icons">
            <img src="images/about-icon-1.png" alt="">
            <h3>quality food</h3>
         </div>
         <div class="icons">
            <img src="images/about-icon-2.png" alt="">
            <h3>food & drinks</h3>
         </div>
         <div class="icons">
            <img src="images/about-icon-3.png" alt="">
            <h3>expert chefs</h3>
         </div>
      </div>
   </div>

</section>

<!-- about section ends -->

<!-- food section starts  -->

<section class="food" id="food">

   <div class="heading">  
      <span>popular dishes</span>
      <h3>our delicious food</h3>
   </div>

   <div class="swiper food-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide" data-name="food-1">
            <img src="images/food-img-1.png" alt="">
            <h3><font-family: 'Kruti Dev 040'>फरा</font-family:></h3>
            <div class="price">₹50.00</div>
         </div>

         <div class="swiper-slide slide" data-name="food-2">
            <img src="images/food-img-2.png" alt="">
            <h3><font-family:' Kruti Dev 040'"s>चीला </font-family:></h3>
            <div class="price">₹50.00</div>
         </div>

         <div class="swiper-slide slide" data-name="food-3">
            <img src="images/food-img-3.png" alt="">
            <h3>सबुदाना बड़ा </h3>
            <div class="price">₹50.00</div>
         </div>

         <div class="swiper-slide slide" data-name="food-4">
            <img src="images/food-img-4.png" alt="">
            <h3>भजिया </h3>
            <div class="price">₹50.00</div>
         </div>

         <div class="swiper-slide slide" data-name="food-5">
            <img src="images/food-img-5.png" alt="">
            <h3>बरा</h3>
            <div class="price">₹50.00</div>
         </div>

      </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

<!-- food section ends -->

<!-- food preview section starts  -->

<section class="food-preview-container">

   <div id="close-preview" class="fas fa-times"></div>

   <div class="food-preview" data-target="food-1">
      <img src="images/food-img-1.png" alt="">
      <h3>delicious food</h3>
      <div class="stars">
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
      </div>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, hic!</p>
      <div class="price">₹50.0</div>
      <a href="#" class="btn">buy now</a>
   </div>

   <div class="food-preview" data-target="food-2">
      <img src="images/food-img-2.png" alt="">
      <h3>delicious food</h3>
      <div class="stars">
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
      </div>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, hic!</p>
      <div class="price">₹50.0</div>
      <a href="#" class="btn">buy now</a>
   </div>

   <div class="food-preview" data-target="food-3">
      <img src="images/food-img-3.png" alt="">
      <h3>delicious food</h3>
      <div class="stars">
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
      </div>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, hic!</p>
      <div class="price">₹50.00</div>
      <a href="#" class="btn">buy now</a>
   </div>

   <div class="food-preview" data-target="food-4">
      <img src="images/food-img-4.png" alt="">
      <h3>delicious food</h3>
      <div class="stars">
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
      </div>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, hic!</p>
      <div class="price">₹50.00</div>
      <a href="#" class="btn">buy now</a>
   </div>

   <div class="food-preview" data-target="food-5">
      <img src="images/food-img-5.png" alt="">
      <h3>delicious food</h3>
      <div class="stars">
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
         <i class="fas fa-star"></i>
      </div>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, hic!</p>
      <div class="price">₹50.00</div>
      <a href="#" class="btn">buy now</a>
   </div>

</section>

<!-- food preview section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

   <div class="heading">
      <span>our gallery</span>
      <h3>our untold stories</h3>
   </div>

   <div class="gallery-container">

      <a href="images/food-galler-img-1.jpg" class="box">
         <img src="images/food-galler-img-1.jpg" alt="">
         <div class="icon"> <i class="fas fa-plus"></i> </div>
      </a>

      <a href="images/food-galler-img-2.jpg" class="box">
         <img src="images/food-galler-img-2.jpg" alt="">
         <div class="icon"> <i class="fas fa-plus"></i> </div>
      </a>

      <a href="images/food-galler-img-3.jpg" class="box">
         <img src="images/food-galler-img-3.jpg" alt="">
         <div class="icon"> <i class="fas fa-plus"></i> </div>
      </a>

      <a href="images/food-galler-img-4.jpg" class="box">
         <img src="images/food-galler-img-4.jpg" alt="">
         <div class="icon"> <i class="fas fa-plus"></i> </div>
      </a>
      
      <a href="images/food-galler-img-5.jpg" class="box">
         <img src="images/food-galler-img-5.jpg" alt="">
         <div class="icon"> <i class="fas fa-plus"></i> </div>
      </a>

      <a href="images/food-galler-img-6.jpg" class="box">
         <img src="images/food-galler-img-6.jpg" alt="">
         <div class="icon"> <i class="fas fa-plus"></i> </div>
      </a>

   </div>

</section>

<!-- gallery section ends -->

<!-- menu section starts  -->

<section class="menu" id="menu">

   <div class="heading">
      <span>our menu</span>
      <h3>our popular dishes</h3>
   </div>

   <div class="swiper menu-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide">
            <h3 class="title">नाश्ता</h3>
            <div class="box-container">
               <div class="box">
            <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>                  
                  <div class="info">
                     <h3><asp:Label runat="server" ID="PNAME" Text='<%# Eval("PName") %>'></asp:Label></h3>
                     <p><asp:Label runat="server" ID="PDESC" Text='<%# Eval("PDesc") %>'></asp:Label></p>
                  </div>
                  <div class="price"><asp:Label runat="server" ID="PRATE" Text='<%# Eval("PRate") %>'></asp:Label></div>               
                </ItemTemplate>
             </asp:DataList>
             </div>
           </div>         

         </div>

         <div class="swiper-slide slide">
            <h3 class="title">दिन का भोजन</h3>
            <div class="box-container">
               <div class="box">          
              <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>                   
                  <div class="info">
                     <h3><asp:Label runat="server" ID="PNAME" Text='<%# Eval("PName") %>'></asp:Label></h3>
                    <p><asp:Label runat="server" ID="PDESC" Text='<%# Eval("PDesc") %>'></asp:Label></p>                  
                  <div class="price"><asp:Label runat="server" ID="PRATE" Text='<%# Eval("PRate") %>'></asp:Label></div>
               </div>
                </ItemTemplate>
             </asp:DataList> 
           </div>
         </div>
    </div>
         <div class="swiper-slide slide">
            <h3 class="title">रात्रि भोजन </h3>
             <div class="box-container">
               <div class="box">
            <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource4">
            <ItemTemplate>
                  <div class="info">
                     <h3><asp:Label runat="server" ID="PNAME" Text='<%# Eval("PName") %>'></asp:Label></h3>
                     <p><asp:Label runat="server" ID="PDESC" Text='<%# Eval("PDesc") %>'></asp:Label></p>
                  </div>
                  <div class="price"><asp:Label runat="server" ID="PRATE" Text='<%# Eval("PRate") %>'></asp:Label></div>   
    </ItemTemplate>
    </asp:DataList>
     </div>
          </div>
         </div>
         <div class="swiper-slide slide">
            <h3 class="title">dessert</h3>
         <div class="box-container">
               <div class="box">
            <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource5">
                <ItemTemplate>

                  <div class="info">
                      <h3><asp:Label runat="server" ID="PNAME" Text='<%# Eval("PName") %>'></asp:Label></h3>
                     <p><asp:Label runat="server" ID="PDESC" Text='<%# Eval("PDesc") %>'></asp:Label></p>
                  </div>
                  <div class="price"><asp:Label runat="server" ID="PRATE" Text='<%# Eval("PRate") %>'></asp:Label></div>
                  <div class="price"></div>
               </div>
            </div>
                </ItemTemplate>
             </asp:DataList>
         </div>
    </div>
      </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

<!-- menu section ends -->

<!-- order section starts  -->

<section class="order" id="order">

   <div class="heading">
      <span>order now</span>
      <h3>fast home delivery</h3>
   </div>


      <div class="box-container">
         <div class="box">
            <div class="inputBox">
               <span>full name</span>
             <%--<input type="text" name="name" placeholder="enter your name">--%>
               <asp:TextBox ID="TextBox1" runat="server" placeholder="enter your name"></asp:TextBox>
            </div>
            <div class="form-group">
               <span>food name</span>
<%--               <input type="text" placeholder="food you want">--%>
              <%-- <asp:TextBox ID="TextBox2" runat="server" placeholder="food you want"></asp:TextBox>--%>
               <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="PName" DataValueField="PName"></asp:DropDownList>
            </div>
            <div class="form-group">
               <span>order details</span>
<%--               <input type="text" placeholder="specifics with food">--%>
              <%-- <asp:TextBox ID="TextBox3" runat="server" placeholder="specifics with food"></asp:TextBox>--%>
               <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="PCat" DataValueField="PCat">
                   <asp:ListItem>AM</asp:ListItem>
                   <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="inputBox">
               <span>your address</span>
<%--               <textarea name="" placeholder="enter your address" id="" cols="30" rows="10"></textarea>--%>
               <asp:TextBox ID="TextBox4" runat="server" placeholder="enter your address" cols="30" rows="10"></asp:TextBox>
            </div>
         </div>
         <div class="box">
            <div class="inputBox">
               <span>number</span>
<%--               <input type="number" placeholder="enter your number">--%>
               <asp:TextBox ID="TextBox5" runat="server" placeholder="enter your number"></asp:TextBox>
            </div>
            <div class="inputBox">
               <span>how much</span>
<%--               <input type="number" placeholder="how many you want">--%>
               <asp:TextBox ID="TextBox6" runat="server" placeholder="how many you want"></asp:TextBox>
            </div>
            <div class="inputBox">
               <span>when you want(order is for only present day)</span>
               <input type="inputBox">
               <asp:TextBox ID="TextBox7" runat="server" placeholder="enter time"></asp:TextBox>
            </div>
            <div class="inputBox">
               <span><asp:Label ID="Label1" runat="server" Text=" pay to delivery boy... thank you" 
                    Visible="False"></asp:Label>  </span>
                
            </div>
         </div>
      </div>
<%--      <input type="submit" value="order now" >--%>
      <asp:Button class="btn" ID="Button1" runat="server" Text="order now" 
    onclick="Button1_Click"></asp:Button>
   
</section>

<!-- order section ends -->

<!-- blogs section starts  -->

<section class="blogs" id="blogs">

   <div class="heading">
      <span>our blogs</span>
      <h3>our latest posts</h3>
   </div>

   <div class="swiper blogs-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide">
            <div class="image">
               <img src="images/blog-img-1.jpg" alt="">
               <span>burger</span>
            </div>
            <div class="content">
               <div class="icon">
                  <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2022 </a>
                  <a href="#"> <i class="fas fa-user"></i> by admin </a>
               </div>
               <a href="#" class="title">blog title goes here</a>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, reprehenderit!</p>
               <a href="#" class="btn">read more</a>
            </div>
         </div>

         <div class="swiper-slide slide">
            <div class="image">
               <img src="images/blog-img-2.jpg" alt="">
               <span>sandwich</span>
            </div>
            <div class="content">
               <div class="icon">
                  <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2022 </a>
                  <a href="#"> <i class="fas fa-user"></i> by admin </a>
               </div>
               <a href="#" class="title">blog title goes here</a>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, reprehenderit!</p>
               <a href="#" class="btn">read more</a>
            </div>
         </div>

         <div class="swiper-slide slide">
            <div class="image">
               <img src="images/blog-img-3.jpg" alt="">
               <span>chicken</span>
            </div>
            <div class="content">
               <div class="icon">
                  <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2022 </a>
                  <a href="#"> <i class="fas fa-user"></i> by admin </a>
               </div>
               <a href="#" class="title">blog title goes here</a>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, reprehenderit!</p>
               <a href="#" class="btn">read more</a>
            </div>
         </div>

         <div class="swiper-slide slide">
            <div class="image">
               <img src="images/blog-img-4.jpg" alt="">
               <span>ice-cream</span>
            </div>
            <div class="content">
               <div class="icon">
                  <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2022 </a>
                  <a href="#"> <i class="fas fa-user"></i> by admin </a>
               </div>
               <a href="#" class="title">blog title goes here</a>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, reprehenderit!</p>
               <a href="#" class="btn">read more</a>
            </div>
         </div>

         <div class="swiper-slide slide">
            <div class="image">
               <img src="images/blog-img-5.jpg" alt="">
               <span>pizza</span>
            </div>
            <div class="content">
               <div class="icon">
                  <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2022 </a>
                  <a href="#"> <i class="fas fa-user"></i> by admin </a>
               </div>
               <a href="#" class="title">blog title goes here</a>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, reprehenderit!</p>
               <a href="#" class="btn">read more</a>
            </div>
         </div>

         <div class="swiper-slide slide">
            <div class="image">
               <img src="images/blog-img-6.jpg" alt="">
               <span>coffee</span>
            </div>
            <div class="content">
               <div class="icon">
                  <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2022 </a>
                  <a href="#"> <i class="fas fa-user"></i> by admin </a>
               </div>
               <a href="#" class="title">blog title goes here</a>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, reprehenderit!</p>
               <a href="#" class="btn">read more</a>
            </div>
         </div>

      </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

<!-- blogs section ends -->



   



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        
        SelectCommand="SELECT [PName], [PRate], [PDesc] FROM [food_tbl] WHERE ([PCat] = @PCat)">
        <SelectParameters>
            <asp:Parameter DefaultValue="breakfast" Name="PCat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        
        SelectCommand="SELECT [PName], [PRate], [PDesc] FROM [food_tbl] WHERE ([PCat] = @PCat)">
        <SelectParameters>
            <asp:Parameter DefaultValue="lunch" Name="PCat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT [PName], [PCat] FROM [food_tbl]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT [PName], [PRate], [PDesc] FROM [food_tbl] WHERE ([PCat] = @PCat)">
        <SelectParameters>
            <asp:Parameter DefaultValue="dinner" Name="PCat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT [PName], [PRate], [PDesc] FROM [food_tbl] WHERE ([PCat] = @PCat)">
        <SelectParameters>
            <asp:Parameter DefaultValue="snacks" Name="PCat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </asp:Content>

