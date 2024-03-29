USE [OnlineShop]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blogID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[blogTitle] [nvarchar](max) NOT NULL,
	[blogContent] [nvarchar](max) NOT NULL,
	[blogImg] [varchar](max) NOT NULL,
	[authorName] [nvarchar](max) NOT NULL,
	[createDate] [date] NOT NULL,
	[statusBlogID] [bit] NOT NULL,
	[cateBlogID] [int] NOT NULL,
 CONSTRAINT [pk_Blog_postID] PRIMARY KEY CLUSTERED 
(
	[blogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brandID] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [varchar](max) NOT NULL,
 CONSTRAINT [pk_Brand_brandID] PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[detailID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [pk_Cart_cartID] PRIMARY KEY CLUSTERED 
(
	[cartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cateID] [int] IDENTITY(1,1) NOT NULL,
	[brandID] [int] NOT NULL,
	[cateName] [nvarchar](max) NOT NULL,
 CONSTRAINT [pk_Category_cateID] PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryBlog]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryBlog](
	[cateBlogID] [int] IDENTITY(1,1) NOT NULL,
	[cateBlogName] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_cateBlogID] PRIMARY KEY CLUSTERED 
(
	[cateBlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[colorID] [int] IDENTITY(1,1) NOT NULL,
	[colorName] [nvarchar](max) NOT NULL,
 CONSTRAINT [pk_Color_colorID] PRIMARY KEY CLUSTERED 
(
	[colorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedbackID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[detailID] [int] NOT NULL,
	[comment] [nvarchar](max) NOT NULL,
	[commentDate] [date] NOT NULL,
	[rateStar] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [pk_Feedback_feedbackID] PRIMARY KEY CLUSTERED 
(
	[feedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgOfProduct]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgOfProduct](
	[imgID] [int] IDENTITY(1,1) NOT NULL,
	[colorID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[imageProduct] [varchar](max) NOT NULL,
 CONSTRAINT [pk_img_ProductID] PRIMARY KEY CLUSTERED 
(
	[imgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[orderDate] [date] NOT NULL,
	[amount] [int] NOT NULL,
	[stateID] [int] NOT NULL,
 CONSTRAINT [pk_Order_orderID] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[detailID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL,
	[discount] [float] NULL,
	[createAt] [date] NOT NULL,
	[updateAt] [date] NOT NULL,
	[orderID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[isFeedback] [bit] NOT NULL,
 CONSTRAINT [pk_OrderDetail_detailID] PRIMARY KEY CLUSTERED 
(
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderState]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderState](
	[stateID] [int] IDENTITY(1,1) NOT NULL,
	[nameState] [nvarchar](max) NOT NULL,
 CONSTRAINT [pk_OrderState_stateID] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](max) NOT NULL,
	[productPrice] [float] NOT NULL,
	[productImage] [varchar](max) NOT NULL,
	[productDescribe] [nvarchar](max) NOT NULL,
	[cateID] [int] NOT NULL,
	[totalQuantity] [int] NOT NULL,
	[discount] [float] NULL,
	[createAt] [date] NOT NULL,
	[isSale] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [pk_Product_productID] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[detailID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[sizeID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[colorID] [int] NOT NULL,
 CONSTRAINT [pk_ProductDetail_deitailID] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[userRole] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](max) NOT NULL,
 CONSTRAINT [pk_Role_userRole] PRIMARY KEY CLUSTERED 
(
	[userRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[sizeID] [int] IDENTITY(1,1) NOT NULL,
	[numberSize] [int] NOT NULL,
 CONSTRAINT [pk_Size_sizeID] PRIMARY KEY CLUSTERED 
(
	[sizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[sliderID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[img] [varchar](max) NOT NULL,
	[createDate] [date] NOT NULL,
	[status] [bit] NOT NULL,
	[link] [varchar](max) NOT NULL,
 CONSTRAINT [pk_Slider_sliderID] PRIMARY KEY CLUSTERED 
(
	[sliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](max) NOT NULL,
	[userPass] [varchar](max) NOT NULL,
	[fullName] [nvarchar](max) NULL,
	[userAvatar] [varchar](max) NULL,
	[userAdress] [nvarchar](max) NULL,
	[userBirth] [date] NULL,
	[userGender] [bit] NULL,
	[userEmail] [varchar](max) NULL,
	[userPhone] [varchar](20) NULL,
	[userRole] [int] NOT NULL,
	[uStatusID] [int] NOT NULL,
 CONSTRAINT [pk_User_userID] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userStatus]    Script Date: 21/02/2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userStatus](
	[uStatusID] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [nvarchar](max) NOT NULL,
 CONSTRAINT [pk_userStatus] PRIMARY KEY CLUSTERED 
(
	[uStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (1, 1, N'HOW TO CLEAN ALL TYPES OF COALS SHOES', N'Tools: Soft bristle brush, leather cleaner or soap (or a solution made of two parts white vinegar and one part water), two soft towels, leather polish and polishing brush
First, take out your lanyard (if available). Then take a soft bristle brush to brush on your dirty boots. Break down any scaly lumps and remove any visible debris. Any remaining residue can scratch the skin when rubbed too hard. This step helps you avoid accidentally damaging your boots.
Second, apply your leather cleaner or your leather cleaning soap (they form bars) onto your damp towel
Dry the boots with a new towel. Always let the boots dry completely before re-touching.Use a towel to absorb the lotion. Follow the instructions provided on the package before applying it. Then add wax or polish, if you like. The wax is barely visible but it acts as a weather resistant coating between skin and rain or snow. Polishing helps boots have a high shine. To apply it, polish your shoe with the quick back and forth motion of the polishing brush.', N'blog2.jpg', N'Ho Phuong Dong', CAST(N'2022-06-19' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (2, 2, N'INSTRUCTIONS FOR RIGHT SHOE CLEANING FOR PEOPLE ''SHOE ADDICTION''', N'Although canvas is a durable material, it can still get dirty if you do not clean and maintain your shoes properly.Here''s how to clean tennis shoes made of canvas. Use an old toothbrush to remove dirt from the outside of the shoes. Then, mix baking soda with one part water. Dip the brush in the mixture and scrub the sole of the shoe thoroughly .If you run regularly, the shoes must be pretty dirty. Here''s how to manually clean the running shoes with detergent. Use a toothbrush to remove the stains on the front shoe surface.

Dip the brush in a mixture of one teaspoon of detergent in one cup of water. Scrub gently over mesh, fabric and rubber. Note, you should not rub on parts made of skin or foam.

Use a washcloth to remove the soap bubbles and let the shoes dry on their own.', N'blog0.jpg', N'Phung Duc Hai', CAST(N'2022-06-20' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (3, 1, N'HOW TO REMOVE CAFE EFFECTIVELY ON THE 3 MOST POPULAR SHOES TYPES', N'Fabric shoes are very comfortable and simple. This type of shoe is best suited for many occasions and combines many different styles. However, they can get dirty very easily, especially if they are light in color or white. So how to remove coffee stains on canvas shoes? In fact, cleaning white Converse shoes or white fabric coffee shoes is quite simple. Use a cloth or brush to remove any liquid (coffee) left over the shoe surface. Continue wiping until the liquid soaks into the fabric.
Prepare a tub of warm water, then moisten the fabric and blot the coffee stain.
Prepare a cleaning solution by mixing about 15 grams of detergent and 2 cups of water in the same bowl.
Dip the cloth in the cleaning solution and start blotting the coffee stain until the coffee stain is completely removed.
Take a new clean cloth, soak it in clean water and remove substances from the remaining mixture. Take another dry cloth and dab on the area to remove any moisture.
If you still have coffee stains, prepare a good mixture of water and vinegar (in equal proportions).
Soak the cloth gently in this solution and gently wipe the area until the stain is completely removed.
Make sure to do this gently and carefully. Any hard work on the surface will very easily damage your suede shoes.', N'blog4.jpg', N'vhalm0', CAST(N'2022-05-19' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (4, 3, N'REMOVE THE BAG NOW THE SECRETS BETWEEN ALWAYS WHITE SHOES FROM EXPERTS', N'2. Properly Storing Shoes
Many people like to keep their shoes in a bag or shoebox. “However, you may not notice that small dust particles are floating in the air everywhere. Especially in enclosed spaces like shoe cabinets ”. Fajardo said. "Over time, dust builds up on shoes, especially on materials such as mesh fabrics, suede and knitted fabrics, reducing the overall novelty of the shoe."

3. Choose a Water-Based Cleaning Solution
"They will be safer than chemical detergents." Fajardo explains, “and is gentle in all materials, including mesh and leather. Dissolving the solution with warm water is more effective. 4. Brush Lightly, Do Not Scrub
Here''s a common misconception: The harder you rub, the cleaner your shoes are. According to Fajardo, rubbing shoes too hard can damage the fabric and cause them to wear out (especially with mesh, knitted and canvas). Instead, use a soft bristle brush or old toothbrush and brush quickly with light pressure. That will make the shoe last longer and allow the cleaning solution to penetrate deeper into the fabric.

5. Regular Deep Clean
"It is very important to clean shoes regularly," says Fajardo. “This will ensure dirt and stains don''t build up on your shoes and make cleaning easier. Let''s say you wear a pair of white shoes 3-4 times a week. Then the advice is to thoroughly clean your shoes every 2 weeks. ”

“Enjoy a good time in my shoes. Don''t be afraid to scratch. And you can comfortably wear shoes down the street because any dirt can be cleaned. ” - Johnny Fajardo, Sneaker LAB.

6. How to Clean Certain Shoes
White Mesh Shoes
Since mesh fabric is a delicate material, you should avoid using bleach. Instead, use a specialized shoe cleaning solution. Or use a little dishwashing liquid mixed with warm water. Gently scrub all of the shoes and rinse them under cold, running water. If your shoes have discolored areas, try adding a few drops of white vinegar for an hour before drying them in the sun.

White Jogging Shoes
First you need to use a toothbrush to remove dirt, mud or debris. Then, use a sponge, towel or brush and apply the shoe sanitizer (or laundry detergent with warm water) to the stain and start rubbing the shoes. For stubborn stains, repeat the steps above until they are gone.

White Canvas Shoes
Chuck Taylor must be the national shoe that most shoe players own, right? The good news is that they are made of cotton canvas and are extremely easy to clean. Simply scrub your shoes with a cleaning solution and add a little warm water and let them dry on their own. (The shoes will look darker at first, but after an hour they will be white again.) Or, you can make a homemade cleaning solution with baking soda and one part water with one part hydrogen peroxide. Use a brush to apply the mixture evenly over all shoes within 4 hours. The mixture will harden and you can easily pry it off of your shoes. Finally, wipe off the excess with a soft cloth or paper towel.”', N'blog5.jpg', N'Nguyen Dinh Phat', CAST(N'2022-06-11' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (5, 4, N'TOP 5 WHITE SHOES OF JAPANESE SHOES TO BUY NOW', N'1. Benefits when using shoe bleaching water
Some of the lesser-known benefits of using shoe bleaching water include:

Keeps your shoes clean, durable and dust-proof at all times.
The shoe bleaching time is much faster than with traditional methods.
Suitable for many different types of shoes, keeping the shoe shape, not affecting the shoe structure, increasing the longevity of the product. Effective cleaning power against "stubborn" stains on shoes.
The operation of using shoe bleach water to clean shoes is simple and quick, just reading the instruction manual is easy to do.
The detergent has a natural fragrance, does not concentration, does not cause stickiness, especially for the safety of users'' health and the skin of their hands.
Easily find affordable shoe bleaching water at shoe stores, department stores, grocery stores, and more. Japanese Kose shoe bleaching water
Kose is known as a high-quality, high-quality shoe bleaching water brand in Japan. Contains 90% natural ingredients in this bleach bottle, absolutely does not affect the quality of the shoes, ensures no harm to the skin of the user''s hands. In addition, the product is designed with a jet nozzle, giving the right amount of solution when spraying, saving costs when using.', N'blog7.jpg', N'Ho Phuong Dong', CAST(N'2022-06-14' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (6, 5, N'HOW TO PREPARE AND CUSTOM SPORTS SHOES WITH THE SHOE SURGEON', N'How to draw your sneakers: A mask
Copy a technique used by professional painters, using masking tape to protect parts of sneakers you don''t want the paint to touch.

Start with the sole, as its uniform shape makes it easy for a part of the shoe to get used to the process. With a little bit of tape hanging on top, tape the tape around the entire surface of the base. Then, press down and roll the excess tape to completely protect the top edge of the stand.
Now move on to the surfaces of the upper part, using masking tape to cover almost every detail (e.g. cloths or lacquer) that you don''t want to paint, making sure the edges are completely covered. .
For each different part, press down firmly on the piece of tape to smooth it, and use your fingernails on the edges to outline the shape''s outline.
Using your hand knife, remove the excess tape by cutting around the outline of the shape, applying a light but firm force. Don''t press too hard - just enough to cut the tape - otherwise you run the risk of scratching the material of the hat.
Repeat steps 3 and 4 for each component of the hat.', N'blog6.jpg', N'Ho Phuong Dong', CAST(N'2022-06-14' AS Date), 1, 2)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (7, 1, N'HOW CUSTOM SHOES CONVERSE | DETAILED INSTRUCTIONS FROM THE WAY', N'1 Plan your design carefully.
Because you are planning on permanently changing your shoes, make sure your design is the one you''ll want to wear for a while. Also consider all the different places where you wear your shoes. You may want curses on your shoes at a music show, but not when you meet your new girlfriend''s parents.

If you feel stuck in your idea search, consider your room. What colors and patterns do you like? Got your favorite band or collection that you love? Get inspired by your own life and make sure your Chats reflect you.
You can never go wrong with classic motifs like stripes, polka dots or chevron.
2 Track your design with a pencil.
Once you''ve identified the design you like, grab a pencil and sketch your illustration on the Converses canvas top and / or rubber feet. The toe rubber-top designs can stand a little more steady over time than canvas, but that''s up to you.', N'blog8.jpg', N'Dinh Phat', CAST(N'2022-06-20' AS Date), 1, 2)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (8, 2, N'7 CONCEPT OF THE BEST NIKE AIR FORCE 1 CUSTOM SHOES IN 2021', N'Color mixing style
Adding another Custom style to the Nike Air Force 1 shoe is a color blending or hybrid hook. The main highlight of Nike Air Force 1 models is the colors from bright to dark with different harmonious blends depending on each person''s taste. You can color in the logo, the eyelets, the back part of the sole with bright colors or dark on the white shoe is enough to make an impression.This is the easiest custom style you can make at home. Since it is just a play of color, there is no need to paint well. But you have to choose the color carefully and do it very meticulously so that the color does not bleed or spread to other colors.
H?a ti?t Bandana
Ki?u custom này du?c l?y c?m h?ng t? khan Bandana. M?u in h?a ti?t này dang r?t du?c ua chu?ng hi?n nay và nhi?u thuong hi?u dã cho ra m?t b? suu t?p theo xu hu?ng này bao g?m Rhude, Fear of God và Travis Scott v?i s? h?p tác c?a anh ?y v?i Nike trên SB Dunk Low. 

Không gi?ng nhu các phiên b?n custom khác c?a Nike AF1 1, ki?u dáng bandana mang d?n m?t tính nang d?c dáo, có th? là ch?t li?u v?i thô ho?c m?t chi?c no l?n du?c qu?n trên ph?n thân giày.

To create accents for the shoe, you can paint seven rainbow colors or paint on a few flowers against the background color you painted earlier.', N'blog9.jpg', N'Alex', CAST(N'2022-04-11' AS Date), 1, 2)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (9, 4, N'HOW DOES THE NIKE AIR FORCE 1 CUSTOM SHOES BASICALLY NEED EXPERIENCE (PART 2)', N'Method
This way, when customizing Nike air force 1 shoes, you will completely immerse your shoes in water with paint, so you must completely cover the sole, lacing, etc. with adhesive tape. Then, spray some primer. This will help the paint stick better. Now fill the tub with water and randomly spray acrylic paint over the water. After making a nice, even layer, dip your shoes upside down in the water. Dip slowly and keep them under water for a while. When you take them out, remove the excess paint, let them dry and then remove the adhesive tape. Lastly, spray the shoes with gloss oil to perfect them.

Idea
You can use the idea of ??custom shoes dipped in hydrogen paint to develop an interesting theme on the shoe. Such as representing waves or forests
4. Sharpie (Color Brush)
We are used to holding pens, I mean, have we been using it for writing since we were 3 or 4 years old? Besides, who hasn''t doodle in a while? Wouldn''t it be great if you could do it on shoes too? Using sharpies is an easy way to customize shoes at home, just draw anything you want. Be it some crazy little patterns or a fine sketch.

Ingredient
Color custom shoe pen
Method
You can start by drawing a rough sketch of your design on the shoe with a pencil. Or you can draw your pattern straight. Either way, just use a brush to color your shoes. They are waterproof so you don''t have to worry about the color dripping or dripping!

Idea
Many people use crayons to create matching patterns like linked patterns. Particularly useful for narrow details and swirl designs.', N'blog10.jpg', N'Ho Phuong Dong', CAST(N'2022-05-25' AS Date), 1, 2)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (10, 1, N'INSTRUCTIONS 5 HOW TO RECOVER A SHOES LIKE NEW', N'Why Do You Need To Recover Your Shoes?
We all know the value of every pair of sneakers and especially if a person owns an Air Jordan shoe cabinet he will consider them as important as his life. Many people are willing to spend large sums of money to own a huge collection of shoes, sometimes money is not a big deal but what matters is the emotions and stories behind each shoe you own. .

You may find it annoying that some people who are not “sneakerheads” start criticizing the act of buying a new pair of shoes when old shoes are no longer beautiful is wasteful, but for limited versions of shoes and How rare? Some shoes cost thousands of dollars on the market and are of high emotional and monetary value to the owner, and they are definitely worth a refurbishment.

Even if you do not spend a lot of investment on sneakers, the fact that you walk around the street with a pair of dirty shoes is also disturbing. So shoe restoration is a very important concept for shoemakers and with the following tutorial, make sure you get a new shoe recovery guide, shine brightly and show off your favorite shoes. mine.

Shoe Restoration Techniques - Learn Materials
First, before you embark on restoring your shoes, you need to know what your shoes are made of. Although the shoe restoration techniques apply quite similarly to the materials, think of the same as the case when washing clothes, you can''t wash white clothes mixed with colored clothes right?

Avoid Using the Washing Machine
In the shoe recovery process, you should avoid using the washing machine as the motors in the machine can damage the shoes, especially old sneakers or shoes that have been exposed to high temperatures. , the washing machine can damage the material and the foam in the shoes. The foam pads will absorb water and if there is too much water they will deform and the base adhesive will come off.', N'blog11.jpg', N'Phung Duc Hai', CAST(N'2022-05-30' AS Date), 1, 3)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (11, 2, N'RECOVERING FABRIC SHOES WITH THE MOST POPULAR MULTIPLAYER METHOD TODAY', N'Dyed canvas shoes with what
Surely you cannot lack dye for canvas shoes. A brand for custom world in particular and dyeing canvas shoes in general is Angelus. An overly famous brand that specializes in custom and shoe care lines you cannot miss.

Dye. For canvas shoes, you will have 2 types of shoe dyeing products that recommend you as follows:

Angelus Leather Dye. The product has many colors to choose from, the dye has high permeability and does not crack. This is a dyed color but can restore shoes on many different materials such as leather, fabric, boosters, rubber, hard plastic ... The fabric after dyeing will be soft without causing a feeling of roughness.Angelus Leather Paint paint colors. This is a dedicated product to repaint, custom shoes on many different materials. However, with the dyeing of canvas shoes, there will be a disadvantage that will make the fabric harder than the original.
Shoe dye mix
If you use Angelus Leather Paint, you should mix colors to reduce hardness and better grip on the fabric. Color mixing with Angelus 2-Soft solvent (1 Color: 1 solvent).', N'blog12.jpg', N'Pham Thanh Long', CAST(N'2022-04-04' AS Date), 1, 3)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (12, 4, N'5 HANDLING WHEN MEN''S SHOES ARE EXTREMELY SIMPLE', N'Shoe padding to overcome the situation of wide heels
The toe pad helps push the heel back, making the shoe fit better.

You can completely take advantage of scrap paper, soft cloth or specialized pads to pad into the toe of lazy shoes. Paddle until it feels the best fit and comfort.

With this approach, not only will the shoes be saved from wide heels but also make the toes smoother.

However, it is important to pay attention to choosing the appropriate material for the toe padding to avoid the situation that each time you remove the shoe, it will become inconvenient.
Handle loose men''s loafers with bandages
If used properly, the bandage will help protect the heel from scratches and make the feet and shoes more fit.

However, it should be noted that this workaround is only suitable for shoes that are loose, the width is negligible.
Use a foam sponge to wear loafers that won''t slip off
For this method, prepare a sponge, then estimate the missing leg space to put on the right shoe, cut out that space and stick it in the heel position.

Note to ensure the most comfortable and fit fit, sticking to the heels. Over time if the sponge wears or flakes, cut another one and glue it back.
', N'blog13.jpg', N'Ho Phuong Dong', CAST(N'2022-06-21' AS Date), 1, 4)
INSERT [dbo].[Blog] ([blogID], [userID], [blogTitle], [blogContent], [blogImg], [authorName], [createDate], [statusBlogID], [cateBlogID]) VALUES (13, 5, N'DETAILED INSTRUCTIONS 4 HOW TO RECOVER A SKY SHOES LIKE NEW', N'1. Removes scratches and wrinkles to restore suede like new shoes
When using leather shoes regularly, the leather shoes will be scratched and wrinkles appear. This makes the shoes look old and poor. So you need to restore shoes to remove these ugly wrinkles.

Step 1: Use a brush to brush off the dirt on the skin
This soft bristle brush is great for maintenance of shoes. Brush in only one direction along the grain to remove any dirt before proceeding to the next step. You should invest in a suede shoe care set that includes a brush and an exfoliant. If you don''t have a suede brush, you can use a toothbrush.

Step 2: Brush back and forth to remove the scratches.
When you brush back and forth on the stain stimulates the skin particles to remove the stain, making the skin cleaner and flatter. A similar treatment on other stains restores the shoe back to its original state.

Note: Scrub only on areas with stains on the skin, avoid intact parts. If you can''t remove with a brush, use a suede eraser.

Step 3: Use a blunt blade to scrape away any scratches if you can''t brush.
Scratches appear when the skin fibers are tangled. Use a knife to lift the skin fibers, rub against the skin fibers, being careful not to break the whole skin. If you don''t have a knife, use a plastic knife or nail file instead. Do not use a sharp or serrated blade to minimize the risk of cutting off the skin.

Step 4: Treat wrinkles on the skin by rubbing in circles.
Use a suede brush, toothbrush or towel to handle it. Rub around the wrinkles multiple times or drag to flatten. Always brush according to the grain to limit wear and tear.

Step 5: Heat wrinkles, stains if not handled.
Cover the shoe with a towel, use a steamer or iron that is normally set to the lowest temperature, iron over the part to be treated to soften the skin, then brush the skin again. The heat will damage the skin, so do not iron it directly. Always move the iron to avoid skin scars, do not leave the iron at one point for more than 3 seconds.

Another way to do this is to boil a pot of water and heat the part of the shoe to be treated on steam, and then rinse the skin.', N'blog14.jpg', N'Phung Duc Hai', CAST(N'2022-03-11' AS Date), 1, 4)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (1, N'Kappa')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (2, N'Ecko Unltd')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (3, N'Superga')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (4, N'Staple')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (1, 1, N'Sneakers')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (2, 1, N'Sport')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (3, 1, N'Casual')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (4, 2, N'Sneakers')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (5, 2, N'Sport')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (6, 2, N'Casual')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (7, 3, N'Sneakers')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (8, 3, N'Sport')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (9, 3, N'Casual')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (10, 4, N'Sneakers')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (11, 4, N'Sport')
INSERT [dbo].[Category] ([cateID], [brandID], [cateName]) VALUES (12, 4, N'Casual')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryBlog] ON 

INSERT [dbo].[CategoryBlog] ([cateBlogID], [cateBlogName]) VALUES (1, N'Clean Shoes')
INSERT [dbo].[CategoryBlog] ([cateBlogID], [cateBlogName]) VALUES (2, N'Custom Shoes')
INSERT [dbo].[CategoryBlog] ([cateBlogID], [cateBlogName]) VALUES (3, N'Recovery Shoes')
INSERT [dbo].[CategoryBlog] ([cateBlogID], [cateBlogName]) VALUES (4, N'Repair Shoes')
SET IDENTITY_INSERT [dbo].[CategoryBlog] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (1, N'pink')
INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (2, N'black')
INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (3, N'yellow')
INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (4, N'red')
INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (5, N'white')
INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (6, N'blue')
INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (7, N'grey')
INSERT [dbo].[Color] ([colorID], [colorName]) VALUES (8, N'orange')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (1, 7, 55, N'Status này được 1000 like, em nguyện cởi trần chạy vào nhà vệ sinh nữ”. Có một sự thật ít ai biết, thằng bạn em chỉ có chưa đến 800 bạn', CAST(N'2022-05-11' AS Date), 3, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (2, 7, 55, N'Status này được 1000 like, em nguyện cởi trần chạy vào nhà vệ sinh nữ”. Có một sự thật ít ai biết, thằng bạn em chỉ có chưa đến 800 bạn', CAST(N'2022-05-11' AS Date), 3, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (3, 7, 100, N'3 most difficult things to do in the world: You can’t count your hair. You can’t wash your eyes with soap. You can’t breathe when your tongue is out. Now please put your tongue back inside.', CAST(N'2022-05-16' AS Date), 4, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (4, 7, 99, N'You never know what you have until… you clean your room.', CAST(N'2022-06-11' AS Date), 3, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (5, 6, 23, N'The brain is a wonderful organ; it starts working in the moment you get up in the morning, and does not stop until you get into the office. — Robert Frost', CAST(N'2022-05-16' AS Date), 5, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (6, 6, 25, N'Light travels faster than sound. This is why some people appear bright until you hear them speak . — Alan Dundes', CAST(N'2022-05-25' AS Date), 5, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (7, 8, 111, N'Facebook just sounds like a drag, in my day seeing pictures of peoples vacations was considered a punishment. — Betty White', CAST(N'2022-05-30' AS Date), 3, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (8, 8, 33, N'Money won’t buy happiness, but it will pay the salaries of a large research staff to study the problem. — Bill Vaughan', CAST(N'2022-04-24' AS Date), 2, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (9, 7, 15, N'You can’t always control who walks into your life… but you can control which window you throw them out of.', CAST(N'2022-05-25' AS Date), 3, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (10, 10, 67, N'I never make the same mistake twice. I make it like five or six times, you know, just to be sure.', CAST(N'2022-06-18' AS Date), 3, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (11, 9, 87, N'The man who can smile when things go wrong has thought of someone else he can blame it on —Robert Bloch', CAST(N'2022-06-01' AS Date), 1, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (12, 6, 8, N'Before you criticize someone, you should walk a mile in their shoes. That way when you criticize them, you are a mile away from them and you have their shoes. —Jack Handey', CAST(N'2022-06-01' AS Date), 4, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (13, 6, 87, N'Men are like bank accounts. Without a lot of money they don’t generate a lot of interest. —Anonymous', CAST(N'2022-06-01' AS Date), 4, 1)
INSERT [dbo].[Feedback] ([feedbackID], [userID], [detailID], [comment], [commentDate], [rateStar], [status]) VALUES (14, 7, 100, N'Men marry women with the hope they will never change. Women marry men with the hope they will change. Invariably they are both disappointed. - Albert Einstein', CAST(N'2022-06-12' AS Date), 5, 1)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[ImgOfProduct] ON 

INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (1, 5, 1, N'1.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (2, 5, 1, N'1.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (3, 5, 1, N'1.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (4, 5, 1, N'1.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (5, 5, 1, N'1.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (6, 5, 1, N'1.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (7, 5, 1, N'1.7.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (8, 2, 2, N'2.1f.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (9, 2, 2, N'2.2f.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (10, 2, 2, N'2.3f.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (11, 2, 2, N'2.4f.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (12, 2, 2, N'2.5f.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (13, 2, 2, N'2.6f.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (14, 2, 2, N'2.7f.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (15, 8, 2, N'2.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (16, 8, 2, N'2.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (17, 8, 2, N'2.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (18, 8, 2, N'2.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (19, 8, 2, N'2.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (20, 8, 2, N'2.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (21, 8, 2, N'2.7.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (22, 3, 2, N'2.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (23, 3, 2, N'2.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (24, 3, 2, N'2.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (25, 3, 2, N'2.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (26, 3, 2, N'2.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (27, 3, 2, N'2.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (28, 3, 2, N'2.7.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (29, 5, 3, N'3.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (30, 5, 3, N'3.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (31, 5, 3, N'3.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (32, 5, 3, N'3.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (33, 5, 3, N'3.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (34, 5, 3, N'3.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (35, 5, 3, N'3.7.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (36, 1, 4, N'4.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (37, 1, 4, N'4.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (38, 1, 4, N'4.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (39, 1, 4, N'4.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (40, 1, 4, N'4.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (41, 1, 4, N'4.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (42, 6, 5, N'5.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (43, 6, 5, N'5.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (44, 6, 5, N'5.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (45, 6, 5, N'5.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (46, 6, 5, N'5.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (47, 6, 5, N'5.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (48, 4, 6, N'6.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (49, 4, 6, N'6.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (50, 4, 6, N'6.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (51, 4, 6, N'6.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (52, 4, 6, N'6.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (53, 4, 6, N'6.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (54, 5, 6, N'6.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (55, 5, 6, N'6.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (56, 5, 6, N'6.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (57, 5, 6, N'6.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (58, 5, 6, N'6.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (59, 5, 6, N'6.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (60, 2, 7, N'7.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (61, 2, 7, N'7.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (62, 2, 7, N'7.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (63, 2, 7, N'7.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (64, 2, 7, N'7.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (65, 2, 7, N'7.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (66, 3, 7, N'7.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (67, 3, 7, N'7.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (68, 3, 7, N'7.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (69, 3, 7, N'7.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (70, 3, 7, N'7.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (71, 3, 7, N'7.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (72, 1, 8, N'8.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (73, 1, 8, N'8.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (74, 1, 8, N'8.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (75, 1, 8, N'8.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (76, 1, 8, N'8.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (77, 1, 8, N'8.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (78, 5, 8, N'8.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (79, 5, 8, N'8.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (80, 5, 8, N'8.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (81, 5, 8, N'8.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (82, 5, 8, N'8.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (83, 5, 8, N'8.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (84, 2, 9, N'9.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (85, 2, 9, N'9.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (86, 2, 9, N'9.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (87, 2, 9, N'9.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (88, 2, 9, N'9.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (89, 2, 9, N'9.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (90, 7, 9, N'9.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (91, 7, 9, N'9.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (92, 7, 9, N'9.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (93, 7, 9, N'9.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (94, 7, 9, N'9.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (95, 7, 9, N'9.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (96, 5, 9, N'9.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (97, 5, 9, N'9.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (98, 5, 9, N'9.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (99, 5, 9, N'9.4.jpg')
GO
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (100, 5, 9, N'9.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (101, 5, 9, N'9.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (102, 2, 10, N'10.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (103, 2, 10, N'10.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (104, 2, 10, N'10.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (105, 2, 10, N'10.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (106, 2, 10, N'10.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (107, 2, 10, N'10.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (108, 8, 11, N'11.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (109, 8, 11, N'11.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (110, 8, 11, N'11.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (111, 8, 11, N'11.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (112, 8, 11, N'11.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (113, 8, 11, N'11.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (114, 6, 12, N'12.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (115, 6, 12, N'12.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (116, 6, 12, N'12.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (117, 6, 12, N'12.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (118, 6, 12, N'12.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (119, 6, 12, N'12.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (120, 4, 13, N'13.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (121, 4, 13, N'13.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (122, 4, 13, N'13.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (123, 4, 13, N'13.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (124, 4, 13, N'13.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (125, 4, 13, N'13.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (126, 2, 13, N'13.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (127, 2, 13, N'13.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (128, 2, 13, N'13.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (129, 2, 13, N'13.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (130, 2, 13, N'13.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (131, 2, 13, N'13.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (132, 4, 14, N'14.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (133, 4, 14, N'14.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (134, 4, 14, N'14.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (135, 4, 14, N'14.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (136, 4, 14, N'14.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (137, 4, 14, N'14.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (138, 6, 15, N'15.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (139, 6, 15, N'15.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (140, 6, 15, N'15.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (141, 6, 15, N'15.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (142, 6, 15, N'15.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (143, 6, 15, N'15.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (144, 5, 16, N'16.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (145, 5, 16, N'16.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (146, 5, 16, N'16.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (147, 5, 16, N'16.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (148, 5, 16, N'16.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (149, 5, 16, N'16.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (150, 2, 17, N'17.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (151, 2, 17, N'17.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (152, 2, 17, N'17.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (153, 2, 17, N'17.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (154, 2, 17, N'17.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (155, 2, 17, N'17.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (156, 6, 17, N'17.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (157, 6, 17, N'17.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (158, 6, 17, N'17.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (159, 6, 17, N'17.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (160, 6, 17, N'17.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (161, 6, 17, N'17.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (162, 5, 18, N'18.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (163, 5, 18, N'18.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (164, 5, 18, N'18.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (165, 5, 18, N'18.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (166, 5, 18, N'18.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (167, 5, 18, N'18.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (168, 2, 18, N'18.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (169, 2, 18, N'18.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (170, 2, 18, N'18.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (171, 2, 18, N'18.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (172, 2, 18, N'18.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (173, 2, 18, N'18.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (174, 2, 19, N'19.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (175, 2, 19, N'19.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (176, 2, 19, N'19.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (177, 2, 19, N'19.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (178, 2, 19, N'19.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (179, 2, 19, N'19.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (180, 4, 19, N'19.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (181, 4, 19, N'19.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (182, 4, 19, N'19.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (183, 4, 19, N'19.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (184, 4, 19, N'19.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (185, 4, 19, N'19.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (186, 3, 19, N'19.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (187, 3, 19, N'19.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (188, 3, 19, N'19.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (189, 3, 19, N'19.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (190, 3, 19, N'19.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (191, 3, 19, N'19.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (192, 7, 20, N'20.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (193, 7, 20, N'20.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (194, 7, 20, N'20.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (195, 7, 20, N'20.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (196, 7, 20, N'20.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (197, 7, 20, N'20.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (198, 7, 21, N'21.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (199, 7, 21, N'21.2.jpg')
GO
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (200, 7, 21, N'21.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (201, 7, 21, N'21.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (202, 7, 21, N'21.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (203, 7, 21, N'21.6.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (204, 5, 22, N'22.1.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (205, 5, 22, N'22.2.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (206, 5, 22, N'22.3.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (207, 5, 22, N'22.4.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (208, 5, 22, N'22.5.jpg')
INSERT [dbo].[ImgOfProduct] ([imgID], [colorID], [productID], [imageProduct]) VALUES (209, 5, 22, N'22.6.jpg')
SET IDENTITY_INSERT [dbo].[ImgOfProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (1, 8, CAST(N'2022-01-19' AS Date), 776, 2)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (2, 8, CAST(N'2022-02-04' AS Date), 920, 2)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (3, 8, CAST(N'2022-02-06' AS Date), 379, 2)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (4, 7, CAST(N'2022-06-06' AS Date), 2388, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (5, 7, CAST(N'2022-06-11' AS Date), 5062, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (6, 7, CAST(N'2022-06-12' AS Date), 3301, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (7, 6, CAST(N'2022-03-26' AS Date), 398, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (8, 8, CAST(N'2022-03-26' AS Date), 398, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (9, 8, CAST(N'2022-04-16' AS Date), 682, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (10, 9, CAST(N'2022-03-26' AS Date), 909, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (11, 6, CAST(N'2022-06-10' AS Date), 1843, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (12, 6, CAST(N'2022-06-08' AS Date), 1195, 3)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (13, 7, CAST(N'2022-06-10' AS Date), 648, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (14, 3, CAST(N'2022-02-02' AS Date), 3558, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (15, 3, CAST(N'2022-04-04' AS Date), 2536, 3)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (16, 3, CAST(N'2022-05-25' AS Date), 1174, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (17, 3, CAST(N'2022-03-28' AS Date), 399, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (18, 3, CAST(N'2022-06-11' AS Date), 2115, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (19, 3, CAST(N'2022-05-05' AS Date), 5215, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (20, 3, CAST(N'2022-05-07' AS Date), 1022, 3)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (21, 3, CAST(N'2022-05-05' AS Date), 1294, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (22, 3, CAST(N'2022-05-05' AS Date), 1146, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (23, 3, CAST(N'2022-05-03' AS Date), 1174, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (24, 3, CAST(N'2022-05-03' AS Date), 1022, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (25, 3, CAST(N'2022-05-07' AS Date), 796, 2)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (26, 3, CAST(N'2022-05-07' AS Date), 511, 1)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (27, 3, CAST(N'2022-05-08' AS Date), 1186, 2)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (28, 3, CAST(N'2022-05-09' AS Date), 1534, 2)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (29, 3, CAST(N'2022-05-09' AS Date), 1887, 2)
INSERT [dbo].[Order] ([orderID], [userID], [orderDate], [amount], [stateID]) VALUES (30, 9, CAST(N'2022-06-26' AS Date), 4602, 4)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (1, 1, 1, 699, 0.37, CAST(N'2022-01-19' AS Date), CAST(N'2022-01-19' AS Date), 1, 440, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (2, 2, 2, 699, 0.37, CAST(N'2022-01-19' AS Date), CAST(N'2022-01-19' AS Date), 1, 880, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (3, 7, 1, 799, 0.36, CAST(N'2022-02-04' AS Date), CAST(N'2022-02-04' AS Date), 2, 511, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (4, 8, 2, 799, 0.36, CAST(N'2022-02-04' AS Date), CAST(N'2022-02-04' AS Date), 2, 1022, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (5, 45, 2, 499, 0.2, CAST(N'2022-02-06' AS Date), CAST(N'2022-02-06' AS Date), 3, 798, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (6, 45, 2, 599, 0.01, CAST(N'2022-06-06' AS Date), CAST(N'2022-06-06' AS Date), 4, 1186, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (7, 84, 4, 699, 0.43, CAST(N'2022-06-06' AS Date), CAST(N'2022-06-06' AS Date), 4, 1202, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (8, 102, 2, 699, 0.16, CAST(N'2022-06-11' AS Date), CAST(N'2022-06-11' AS Date), 5, 1174, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (9, 45, 1, 499, 0.05, CAST(N'2022-06-11' AS Date), CAST(N'2022-06-11' AS Date), 5, 474, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (10, 204, 6, 599, 0.05, CAST(N'2022-06-11' AS Date), CAST(N'2022-06-11' AS Date), 5, 3414, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (11, 88, 3, 699, 0.43, CAST(N'2022-06-12' AS Date), CAST(N'2022-06-12' AS Date), 6, 1195, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (12, 66, 2, 499, 0.35, CAST(N'2022-06-12' AS Date), CAST(N'2022-06-12' AS Date), 6, 648, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (13, 110, 4, 499, 0.27, CAST(N'2022-06-12' AS Date), CAST(N'2022-06-12' AS Date), 6, 1457, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (14, 84, 1, 699, 0.43, CAST(N'2022-03-26' AS Date), CAST(N'2022-03-26' AS Date), 7, 398, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (15, 84, 1, 699, 0.43, CAST(N'2022-03-26' AS Date), CAST(N'2022-03-26' AS Date), 8, 398, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (16, 84, 1, 699, 0.43, CAST(N'2022-01-11' AS Date), CAST(N'2022-01-11' AS Date), 9, 398, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (17, 79, 1, 499, 0.43, CAST(N'2022-02-06' AS Date), CAST(N'2022-02-06' AS Date), 9, 284, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (18, 84, 1, 699, 0.43, CAST(N'2022-01-11' AS Date), CAST(N'2022-03-26' AS Date), 10, 398, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (19, 7, 1, 799, 0.36, CAST(N'2022-01-11' AS Date), CAST(N'2022-03-26' AS Date), 10, 511, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (20, 88, 3, 699, 0.43, CAST(N'2022-06-10' AS Date), CAST(N'2022-06-10' AS Date), 11, 1195, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (21, 66, 2, 499, 0.35, CAST(N'2022-06-10' AS Date), CAST(N'2022-06-10' AS Date), 11, 648, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (22, 88, 3, 699, 0.43, CAST(N'2022-06-08' AS Date), CAST(N'2022-06-08' AS Date), 12, 1195, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (23, 66, 2, 499, 0.35, CAST(N'2022-06-10' AS Date), CAST(N'2022-06-10' AS Date), 13, 648, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (24, 56, 2, 499, 0.35, CAST(N'2022-02-02' AS Date), CAST(N'2022-02-02' AS Date), 14, 648, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (25, 78, 3, 699, 0.1, CAST(N'2022-02-02' AS Date), CAST(N'2022-02-02' AS Date), 14, 1887, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (26, 11, 2, 799, 0.36, CAST(N'2022-02-02' AS Date), CAST(N'2022-02-02' AS Date), 14, 1022, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (27, 13, 2, 499, 0.35, CAST(N'2022-04-04' AS Date), CAST(N'2022-04-04' AS Date), 15, 648, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (28, 78, 3, 699, 0.1, CAST(N'2022-04-04' AS Date), CAST(N'2022-04-04' AS Date), 15, 1887, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (29, 102, 2, 699, 0.16, CAST(N'2022-05-25' AS Date), CAST(N'2022-05-25' AS Date), 16, 1174, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (30, 44, 1, 499, 0.2, CAST(N'2022-03-28' AS Date), CAST(N'2022-03-28' AS Date), 17, 399, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (31, 187, 3, 699, 0.3, CAST(N'2022-06-11' AS Date), CAST(N'2022-06-11' AS Date), 18, 1467, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (32, 166, 1, 799, 0.19, CAST(N'2022-06-11' AS Date), CAST(N'2022-06-11' AS Date), 18, 647, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (33, 164, 2, 799, 0.19, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 19, 1294, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (34, 149, 2, 799, 0.04, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 19, 1534, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (35, 134, 2, 699, 0.18, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 19, 1146, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (36, 119, 1, 499, 0.11, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 19, 444, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (37, 85, 2, 699, 0.43, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 19, 796, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (38, 11, 2, 799, 0.36, CAST(N'2022-02-02' AS Date), CAST(N'2022-02-02' AS Date), 20, 1022, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (39, 164, 2, 799, 0.19, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 21, 1294, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (40, 134, 2, 699, 0.18, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 22, 1146, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (41, 102, 2, 699, 0.16, CAST(N'2022-05-03' AS Date), CAST(N'2022-05-03' AS Date), 23, 1174, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (42, 11, 2, 799, 0.36, CAST(N'2022-05-03' AS Date), CAST(N'2022-05-03' AS Date), 24, 1022, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (43, 85, 2, 699, 0.43, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-05' AS Date), 25, 796, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (44, 7, 1, 799, 0.36, CAST(N'2022-05-07' AS Date), CAST(N'2022-05-07' AS Date), 26, 511, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (45, 45, 2, 599, 0.01, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-08' AS Date), 27, 1186, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (46, 149, 2, 799, 0.04, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-09' AS Date), 28, 1534, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (47, 78, 3, 699, 0.1, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-09' AS Date), 29, 1887, 0)
INSERT [dbo].[OrderDetail] ([orderDetailID], [detailID], [quantity], [price], [discount], [createAt], [updateAt], [orderID], [Amount], [isFeedback]) VALUES (48, 150, 6, 799, 0.04, CAST(N'2022-06-26' AS Date), CAST(N'2022-06-26' AS Date), 30, 4602, 0)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderState] ON 

INSERT [dbo].[OrderState] ([stateID], [nameState]) VALUES (1, N'Complete')
INSERT [dbo].[OrderState] ([stateID], [nameState]) VALUES (2, N'Processing')
INSERT [dbo].[OrderState] ([stateID], [nameState]) VALUES (3, N'Canceled')
INSERT [dbo].[OrderState] ([stateID], [nameState]) VALUES (4, N'Waiting')
SET IDENTITY_INSERT [dbo].[OrderState] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (1, N'Kappa giày sneakers nam/nữ 36151QW SS22', 699, N'product_1.jpg', N'Giày thể thao nam/nữ Kappa. Giày nam/nữ thuộc bộ sưu tập xuân hè 2022. Thân giày: vải tổng hợp và PU; đế giày: cao su. Giày nhẹ và dễ dàng vệ sinh.', 1, 136, 0.37, CAST(N'2021-03-22' AS Date), 0, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (2, N'Kappa giày thể thao nam 311992W SS22', 799, N'product_2.jpg', N'Giày thể thao nam Kappa. Giày nam thuộc bộ sưu tập xuân hè 2022. Thân giày: vải dệt và TPU; đế giày: cao su.', 2, 81, 0.36, CAST(N'2020-06-28' AS Date), 1, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (3, N'Kappa giày thể thao nam/nữ 311992W SS22', 799, N'product_3.jpg', N'Giày thể thao nam/ nữ Kappa. Giày nam/nữ thuộc bộ sưu tập xuân hè 2022. Thân giày: vải dệt và TPU; đế giày: cao su.', 2, 165, 0.06, CAST(N'2020-06-03' AS Date), 1, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (4, N'Kappa giày thể thao nữ 311992W SS22', 799, N'product_4.jpg', N'Giày thể thao nữ Kappa. Giày nữ thuộc bộ sưu tập xuân hè 2022. Thân giày: vải dệt và TPU; đế giày: cao su.', 2, 178, 0.18, CAST(N'2020-10-31' AS Date), 0, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (5, N'Kappa giày sneakers nữ 37163FW SS22', 599, N'product_5.jpg', N'Giày sneakers nam/nữ Kappa. Giày nam/nữ thuộc bộ sưu tập xuân hè 2022. Thân giày được làm từ PU, polyester, đế giày làm cao su, bền bỉ, trọng lượng nhẹ và dễ vệ sinh.', 1, 108, 0.01, CAST(N'2020-04-02' AS Date), 0, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (6, N'ECKO UNLTD GIÀY SNEAKERS UNISEX OF21-28008', 499, N'product_6.jpg', N'Giày sneakers unisex OF21-28008 thuộc loại giày ECKO UNLTD', 4, 171, 0.2, CAST(N'2020-10-21' AS Date), 0, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (7, N'ECKO UNLTD GIÀY SNEAKERS UNISEX OF21-28006', 499, N'product_7.jpg', N'Giày sneakers unisex OF21-28006 thuộc loại giày ECKO UNLTD', 4, 188, 0.35, CAST(N'2020-12-09' AS Date), 0, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (8, N'Ecko Unltd giày thể thao nữ OF21-24022', 699, N'product_8.jpg', N'Thiết kế dáng thể thao, trendy, trẻ trung và năng động. Ôm vừa vặn vào cổ chân, dễ dàng di chuyển. Có thể kế hợp cùng các trang phục thể thao, hoặc trang phục thường ngày để tăng thêm nét xinh xắn và trẻ trung cho các nàng.', 5, 134, 0.1, CAST(N'2020-07-25' AS Date), 1, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (9, N'Ecko Unltd giày thể thao nữ OF21-24020', 699, N'product_9.jpg', N'Thuộc bộ sưu tập giày Thu Đông 2021 mới nhất của ECKO UNLTD. Nhiều sắc màu thời thượng, trendy và cá tính. Đi làm, đi chơi, đi du lịch, hay đi học đều trẻ trung, năng động. Chất liệu: Thân: PU/MESH, Đế: EVA/TPR.', 5, 173, 0.43, CAST(N'2020-07-04' AS Date), 0, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (10, N'Ecko Unltd giày thể thao nữ OF21-24021', 699, N'product_10.jpg', N'Thuộc bộ sưu tập giày Thu Đông 2021 mới nhất của ECKO UNLTD. Nhiều sắc màu thời thượng, trendy và cá tính. Đi làm, đi chơi, đi du lịch, hay đi học đều trẻ trung, năng động. Chất liệu: Thân: PU/MESH, Đế: EVA/TPR.', 5, 96, 0.16, CAST(N'2021-04-30' AS Date), 1, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (11, N'Superga giày sneakers nữ 121SSWS_S00C3N0', 499, N'product_11.jpg', N'Bộ sưu tập sneaker nữ: LE SUPERGA. Chất liệu: Đế ngoài: 100% Cao su; Bề mặt: 100% Cotton; Lớp lót: 100% Cotton. Thiết kế: Sự cải tiến của một biểu tượng.', 7, 5, 0, CAST(N'2021-03-06' AS Date), 1, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (12, N'Superga giày sneakers nữ 121SSWS_S001W00', 499, N'product_12.jpg', N'Bộ sưu tập giày sneaker nữ đẹp: LE SUPERGA. Chất liệu: Đế ngoài: 100% Cao su; Bề mặt: 100% Cotton; Lớp lót: 100% Cotton. Thiết kế: Một sự tôn vinh của màu sắc và sự sáng tạo - đôi giày thể thao Superga 2750 theo mùa này được in với họa tiết đồ họa vui tư', 7, 297, 0.27, CAST(N'2021-11-19' AS Date), 0, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (13, N'Superga giày sneakers nam 220SSMS_S000010', 499, N'product_13.jpg', N'Bộ sưu tập: 2750 Classic
Chất liệu: Đế ngoài: 100% Cao su; Bề mặt: 100% Cotton; Lớp lót: 100% Cotton. Vải bông tinh khiết, thoáng khí cùng đế ngoài cao su tự nhiên lưu hóa bền bỉ, chống trơn trượt tốt.
Thiết kế: Với thiết kế thanh lịch, form dáng đặc trưng của phong cách giày Superga cùng với logo Superga vải in tinh tế được gắn vào thân giày đã trở thành điểm nhận dạng kinh điển cho thương hiệu Ý hơn 100 năm.', 7, 56, 0.11, CAST(N'2021-12-12' AS Date), 0, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (14, N'Superga giày nữ 221SSWS_S000010', 499, N'product_14.jpg', N'Giày 221SSWS_S000010 thuộc hãng giày Superga dành cho nữ', 9, 147, 0.02, CAST(N'2020-06-04' AS Date), 1, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (15, N'Superga giày đế cao su nữ 221SSWS_S001W00', 699, N'product_15.jpg', N'Bạn đang tìm kiếm một mẫu giày đế cao su nữ đẹp để đi chơi và đi dạo? Mẫu giày nữ Superga 221SSWS_S001W00 A5P chính là sự lựa chọn bạn nên cân nhắc đấy.', 9, 163, 0.18, CAST(N'2021-09-04' AS Date), 1, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (16, N'Superga giày nam/nữ 221SSUS_S4116EW', 599, N'product_16.jpg', N'Thiết kế basic và trung tính. Nam nữ mang đều đẹp. Đế cao: 3cm. Chất liệu: Thân: 100% Cotton; Đế: 100% Cao su.', 9, 105, 0.21, CAST(N'2021-10-11' AS Date), 1, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (17, N'KAPPA GIÀY SNEAKERS 37152LW A0E 45', 799, N'product_17.jpg', N'GIÀY sneakers 37152LW A0E 45 thuộc hãng giày sneakers dành cho cả nam/nữ', 1, 145, 0.04, CAST(N'2020-04-22' AS Date), 0, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (18, N'KAPPA GIÀY SNEAKERS 304UEA0 A01 38', 799, N'product_18.jpg', N'GIÀY sneakers 304UEA0 A01 38 thuộc hãng giày sneakers dành cho cả nam/nữ', 1, 160, 0.19, CAST(N'2022-04-20' AS Date), 1, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (19, N'Ecko Unltd giày sneakers nam IS22-26503', 699, N'product_19.jpg', N'Giày sneakers Ecko Unltd. chinh phục các tín đồ sneakers với cách phối màu trẻ trung, năng động cùng họa tiết điểm nhấn Ecko Unltd. đậm chất thương hiệu. Phần thiết kế bắt mắt, trendy và có thể cân được mọi outfit cũng là một điểm sáng của Giày nam sneakers Ecko Unltd. Với hai chất liệu da tổng hợp và cao su, giày không chỉ giúp các bước chân trở nên nhẹ nhàng mà còn bền bỉ. Đáp ứng đủ mọi tiêu chí thời trang nam, giày sneakers Ecko Unltd. hoàn toàn là lựa chọn tuyệt vời trong tủ giày của bạn.', 4, 143, 0.39, CAST(N'2022-03-20' AS Date), 1, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (20, N'Ecko Unltd giày sneakers nam OF21-26001', 699, N'product_20.jpg', N'Sau một thời gian vắng bóng, bộ sưu tập giày đậm chất Mỹ từ thương hiệu ECKO UNLTD. đã quay lại thị trường Việt Nam. Giày Sneakers Nam ECKO UNLTD. OF21-26001 Trắng chắc chắn sẽ là item thời trang không thể thiếu trong tủ giày của các tín đồ thời trang chuộng phong cách sôi động, phóng khoáng và đậm chất thời thượng cho những buổi tiệc hết mình hoặc những lần dạo phố năng động.', 4, 298, 0.3, CAST(N'2021-03-20' AS Date), 0, 0)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (21, N'Superga giày sneakers nam S000010 SS22', 499, N'product_21.jpg', N'Giày sneakers S000010 SS22GIÀY là giày thời trang cổ thấp dành cho nam', 7, 70, 0.19, CAST(N'2021-01-25' AS Date), 1, 1)
INSERT [dbo].[Product] ([productID], [productName], [productPrice], [productImage], [productDescribe], [cateID], [totalQuantity], [discount], [createAt], [isSale], [isActive]) VALUES (22, N'Superga giày nam/nữ 221SSUS_S4116EW', 599, N'product_22.jpg', N'Thiết kế basic và trung tính. Nam nữ mang đều đẹp. Đế cao: 3cm. Chất liệu: Thân: 100% Cotton; Đế: 100% Cao su. Đủ size từ 35-44 cho chàng và nàng lựa chọn.', 9, 160, 0.09, CAST(N'2021-04-26' AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (1, 1, 1, 10, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (2, 1, 2, 112, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (3, 1, 3, 24, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (4, 1, 4, 21, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (5, 1, 5, 101, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (6, 1, 6, 94, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (7, 2, 1, 31, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (8, 2, 2, 314, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (9, 2, 3, 42, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (10, 2, 4, 10, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (11, 2, 5, 72, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (12, 2, 6, 654, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (13, 2, 1, 54, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (14, 2, 2, 231, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (15, 2, 3, 124, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (16, 2, 4, 254, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (17, 2, 5, 102, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (18, 2, 6, 42, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (19, 2, 1, 54, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (20, 2, 2, 231, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (21, 2, 3, 124, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (22, 2, 4, 254, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (23, 2, 5, 102, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (24, 2, 6, 42, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (25, 3, 1, 54, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (26, 3, 2, 231, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (27, 3, 3, 124, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (28, 3, 4, 254, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (29, 3, 5, 102, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (30, 3, 6, 42, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (31, 4, 1, 10, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (32, 4, 2, 112, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (33, 4, 3, 24, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (34, 4, 4, 21, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (35, 4, 5, 101, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (36, 4, 6, 94, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (37, 5, 1, 54, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (38, 5, 2, 231, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (39, 5, 3, 124, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (40, 5, 4, 254, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (41, 5, 5, 102, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (42, 5, 6, 42, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (43, 6, 1, 54, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (44, 6, 2, 231, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (45, 6, 3, 124, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (46, 6, 4, 254, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (47, 6, 5, 102, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (48, 6, 6, 42, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (49, 6, 1, 54, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (50, 6, 2, 231, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (51, 6, 3, 124, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (52, 6, 4, 254, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (53, 6, 5, 102, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (54, 6, 6, 42, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (55, 7, 1, 54, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (56, 7, 2, 231, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (57, 7, 3, 124, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (58, 7, 4, 254, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (59, 7, 5, 102, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (60, 7, 6, 42, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (61, 7, 1, 54, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (62, 7, 2, 231, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (63, 7, 3, 124, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (64, 7, 4, 254, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (65, 7, 5, 102, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (66, 7, 6, 42, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (67, 8, 1, 10, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (68, 8, 2, 112, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (69, 8, 3, 24, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (70, 8, 4, 21, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (71, 8, 5, 101, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (72, 8, 6, 94, 1)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (73, 8, 1, 10, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (74, 8, 2, 112, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (75, 8, 3, 24, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (76, 8, 4, 21, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (77, 8, 5, 101, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (78, 8, 6, 94, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (79, 9, 1, 54, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (80, 9, 2, 231, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (81, 9, 3, 124, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (82, 9, 4, 254, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (83, 9, 5, 102, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (84, 9, 6, 42, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (85, 9, 1, 54, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (86, 9, 2, 231, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (87, 9, 3, 124, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (88, 9, 4, 254, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (89, 9, 5, 102, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (90, 9, 6, 42, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (91, 9, 1, 54, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (92, 9, 2, 231, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (93, 9, 3, 124, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (94, 9, 4, 254, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (95, 9, 5, 102, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (96, 9, 6, 42, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (97, 10, 1, 10, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (98, 10, 2, 112, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (99, 10, 3, 24, 2)
GO
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (100, 10, 4, 21, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (101, 10, 5, 101, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (102, 10, 6, 94, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (103, 11, 1, 54, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (104, 11, 2, 231, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (105, 11, 3, 124, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (106, 11, 4, 254, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (107, 11, 5, 102, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (108, 11, 6, 42, 8)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (109, 12, 1, 10, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (110, 12, 2, 112, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (111, 12, 3, 24, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (112, 12, 4, 21, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (113, 12, 5, 101, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (114, 12, 6, 94, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (115, 13, 1, 54, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (116, 13, 2, 231, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (117, 13, 3, 124, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (118, 13, 4, 254, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (119, 13, 5, 102, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (120, 13, 6, 42, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (121, 13, 1, 54, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (122, 13, 2, 231, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (123, 13, 3, 124, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (124, 13, 4, 254, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (125, 13, 5, 102, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (126, 13, 6, 42, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (127, 14, 1, 10, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (128, 14, 2, 112, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (129, 14, 3, 24, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (130, 14, 4, 21, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (131, 14, 5, 101, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (132, 14, 6, 94, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (133, 15, 1, 54, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (134, 15, 2, 231, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (135, 15, 3, 124, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (136, 15, 4, 254, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (137, 15, 5, 102, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (138, 15, 6, 42, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (139, 16, 1, 10, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (140, 16, 2, 112, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (141, 16, 3, 24, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (142, 16, 4, 21, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (143, 16, 5, 101, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (144, 16, 6, 94, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (145, 17, 1, 54, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (146, 17, 2, 231, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (147, 17, 3, 124, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (148, 17, 4, 254, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (149, 17, 5, 102, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (150, 17, 6, 42, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (151, 17, 1, 54, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (152, 17, 2, 231, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (153, 17, 3, 124, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (154, 17, 4, 254, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (155, 17, 5, 102, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (156, 17, 6, 42, 6)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (157, 18, 1, 10, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (158, 18, 2, 112, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (159, 18, 3, 24, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (160, 18, 4, 21, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (161, 18, 5, 101, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (162, 18, 6, 94, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (163, 18, 1, 10, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (164, 18, 2, 112, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (165, 18, 3, 24, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (166, 18, 4, 21, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (167, 18, 5, 101, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (168, 18, 6, 94, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (169, 19, 1, 54, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (170, 19, 2, 231, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (171, 19, 3, 124, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (172, 19, 4, 254, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (173, 19, 5, 102, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (174, 19, 6, 42, 2)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (175, 19, 1, 54, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (176, 19, 2, 231, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (177, 19, 3, 124, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (178, 19, 4, 254, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (179, 19, 5, 102, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (180, 19, 6, 42, 4)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (181, 19, 1, 54, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (182, 19, 2, 231, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (183, 19, 3, 124, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (184, 19, 4, 254, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (185, 19, 5, 102, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (186, 19, 6, 42, 3)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (187, 20, 1, 54, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (188, 20, 2, 231, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (189, 20, 3, 124, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (190, 20, 4, 254, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (191, 20, 5, 102, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (192, 20, 6, 42, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (193, 21, 1, 10, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (194, 21, 2, 112, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (195, 21, 3, 24, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (196, 21, 4, 21, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (197, 21, 5, 101, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (198, 21, 6, 94, 7)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (199, 22, 1, 54, 5)
GO
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (200, 22, 2, 231, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (201, 22, 3, 124, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (202, 22, 4, 254, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (203, 22, 5, 102, 5)
INSERT [dbo].[ProductDetail] ([detailID], [productID], [sizeID], [quantity], [colorID]) VALUES (204, 22, 6, 42, 5)
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([userRole], [roleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([userRole], [roleName]) VALUES (2, N'Sale Manager')
INSERT [dbo].[Role] ([userRole], [roleName]) VALUES (3, N'Sale')
INSERT [dbo].[Role] ([userRole], [roleName]) VALUES (4, N'Marketing')
INSERT [dbo].[Role] ([userRole], [roleName]) VALUES (5, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([sizeID], [numberSize]) VALUES (1, 38)
INSERT [dbo].[Size] ([sizeID], [numberSize]) VALUES (2, 39)
INSERT [dbo].[Size] ([sizeID], [numberSize]) VALUES (3, 40)
INSERT [dbo].[Size] ([sizeID], [numberSize]) VALUES (4, 41)
INSERT [dbo].[Size] ([sizeID], [numberSize]) VALUES (5, 42)
INSERT [dbo].[Size] ([sizeID], [numberSize]) VALUES (6, 43)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([sliderID], [title], [img], [createDate], [status], [link]) VALUES (1, N'Director of Sales', N'blog1.jpg', CAST(N'2021-06-21' AS Date), 1, N'blogDetail?id=1')
INSERT [dbo].[Slider] ([sliderID], [title], [img], [createDate], [status], [link]) VALUES (2, N'Legal Assistant', N'blog2.jpg', CAST(N'2020-10-26' AS Date), 0, N'blogDetail?id=2')
INSERT [dbo].[Slider] ([sliderID], [title], [img], [createDate], [status], [link]) VALUES (3, N'Senior Sales Associate', N'blog3.jpg', CAST(N'2021-01-27' AS Date), 1, N'blogDetail?id=3')
INSERT [dbo].[Slider] ([sliderID], [title], [img], [createDate], [status], [link]) VALUES (4, N'Actuary', N'blog4.jpg', CAST(N'2021-12-21' AS Date), 0, N'blogDetail?id=4')
INSERT [dbo].[Slider] ([sliderID], [title], [img], [createDate], [status], [link]) VALUES (5, N'Quanlity Engineer', N'blog5.jpg', CAST(N'2022-05-15' AS Date), 1, N'blogDetail?id=5')
INSERT [dbo].[Slider] ([sliderID], [title], [img], [createDate], [status], [link]) VALUES (6, N'Nice model sports shoes', N'blog5.jpg', CAST(N'2022-05-15' AS Date), 1, N'shop.jsp')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (1, N'long123', N'123', N'Phạm Thành Long', N'long.jpg', N'Thanh Oai - Hà Nội', CAST(N'2001-01-19' AS Date), 1, N'longpthe150040@fpt.edu.vn', N'0394292729', 1, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (2, N'dong123', N'123', N'Hồ Phương Đồng', N'dong.jpg', N'Thuận Thành - Bắc Ninh', CAST(N'2001-05-25' AS Date), 1, N'donghphe150112@fpt.edu.vn', N'0949948556', 2, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (3, N'dung123', N'123', N'Chu Tuấn Dũng', N'dung.jpg', N'Văn Giang - Hưng Yên', CAST(N'2001-01-21' AS Date), 1, N'dungcthe150178@fpt.edu.vn', N'0928602001', 3, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (4, N'phat123', N'123', N'Nguyễn Đình Phát', N'phat.jpg', N'Tiên Du - Bắc Ninh', CAST(N'2001-04-07' AS Date), 1, N'phatndhe150033@fpt.edu.vn', N'0974242242', 4, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (5, N'hai123', N'123', N'Phùng Đức Hải', N'hai.jpg', N'Thái Hòa - Nghệ An', CAST(N'2001-05-04' AS Date), 1, N'haipdhe153344@fpt.edu.vn', N'0964203311', 5, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (6, N'dongcus', N'123', N'Đồng Cus', N'dong.jpg', N'Everywhere', CAST(N'2001-05-25' AS Date), 1, N'dongcus@gmail.com', N'01234789654', 5, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (7, N'haicus', N'123', N'Hải Cus', N'hai.jpg', N'Everywhere', CAST(N'2001-05-15' AS Date), 1, N'haicus@gmail.com', N'01234589654', 5, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (8, N'longcus', N'123', N'Long Cus', N'long.jpg', N'Everywhere', CAST(N'2001-02-25' AS Date), 1, N'longcus@gmail.com', N'02134789654', 5, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (9, N'phatcus', N'123', N'Phát Cus', N'phat.jpg', N'Everywhere', CAST(N'2001-01-25' AS Date), 1, N'phatcus@gmail.com', N'01298789654', 5, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (10, N'dungcus', N'123', N'Dũng Cus', N'dung.jpg', N'Everywhere', CAST(N'2001-05-15' AS Date), 1, N'dungcus@gmail.com', N'01264789654', 5, 1)
INSERT [dbo].[User] ([userID], [userName], [userPass], [fullName], [userAvatar], [userAdress], [userBirth], [userGender], [userEmail], [userPhone], [userRole], [uStatusID]) VALUES (11, N'root', N'095728', N'Nguyễn Hoàng Kiên', NULL, N'Khuc Thua Du', CAST(N'1995-07-12' AS Date), 1, N'longnkhe172356@fpt.edu.vn', N'+84919507158', 5, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[userStatus] ON 

INSERT [dbo].[userStatus] ([uStatusID], [statusName]) VALUES (1, N'Active')
INSERT [dbo].[userStatus] ([uStatusID], [statusName]) VALUES (2, N'Not Active')
SET IDENTITY_INSERT [dbo].[userStatus] OFF
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [fk_Blog_userID] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [fk_Blog_userID]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [fk_cateBlogID] FOREIGN KEY([cateBlogID])
REFERENCES [dbo].[CategoryBlog] ([cateBlogID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [fk_cateBlogID]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_Cart_detailID] FOREIGN KEY([detailID])
REFERENCES [dbo].[ProductDetail] ([detailID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_Cart_detailID]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_Cart_userID] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_Cart_userID]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [fk_Category_brandID] FOREIGN KEY([brandID])
REFERENCES [dbo].[Brand] ([brandID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [fk_Category_brandID]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [fk_Feedback_detailID] FOREIGN KEY([detailID])
REFERENCES [dbo].[ProductDetail] ([detailID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [fk_Feedback_detailID]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [fk_Feedback_userlID] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [fk_Feedback_userlID]
GO
ALTER TABLE [dbo].[ImgOfProduct]  WITH CHECK ADD  CONSTRAINT [fk_img_colorID] FOREIGN KEY([colorID])
REFERENCES [dbo].[Color] ([colorID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgOfProduct] CHECK CONSTRAINT [fk_img_colorID]
GO
ALTER TABLE [dbo].[ImgOfProduct]  WITH CHECK ADD  CONSTRAINT [fk_img_productID] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgOfProduct] CHECK CONSTRAINT [fk_img_productID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_Order_stateID] FOREIGN KEY([stateID])
REFERENCES [dbo].[OrderState] ([stateID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [fk_Order_stateID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_Order_userID] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [fk_Order_userID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [pk_DetailID] FOREIGN KEY([detailID])
REFERENCES [dbo].[ProductDetail] ([detailID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [pk_DetailID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [pk_orderFrID] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [pk_orderFrID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Product_cateID] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cateID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Product_cateID]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [fk_ProductDetail_colorID] FOREIGN KEY([colorID])
REFERENCES [dbo].[Color] ([colorID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [fk_ProductDetail_colorID]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [fk_ProductDetail_productID] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [fk_ProductDetail_productID]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [fk_ProductDetail_sizeID] FOREIGN KEY([sizeID])
REFERENCES [dbo].[Size] ([sizeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [fk_ProductDetail_sizeID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [fk_User_userRole] FOREIGN KEY([userRole])
REFERENCES [dbo].[Role] ([userRole])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [fk_User_userRole]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [fk_User_userStatus] FOREIGN KEY([uStatusID])
REFERENCES [dbo].[userStatus] ([uStatusID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [fk_User_userStatus]
GO
