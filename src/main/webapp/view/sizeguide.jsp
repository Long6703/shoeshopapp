<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 1/18/2024
  Time: 12:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Monaco&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Arial&display=swap">


        <link rel="stylesheet" type="text/css" href="css/sizeguide.css">

</head>
<body>

<div class="container">
    <h1>Size Chart</h1>
    <div class="options">
        <button id="men" class="active">Men</button>
        <button id="women">Women</button>
        <button id="kid">Kid</button>
    </div>
    <!--            <div class="background-overlay"></div>-->
    <div class="sizeChartContainer"><div id="men-table" class="sub-table active">
        <h2>Mike Men's Footwear Size Chart</h2>

        <table class="sizeChart" border="0" cellpadding="10" cellspacing="0" width="100%">

            <tbody>
            <tr>
                <td>US-Men's</td>
                <td>3.5</td>
                <td>4</td>
                <td>4.5</td>
                <td>5</td>
                <td>5.5</td>
                <td>6</td>
                <td>6.5</td>
                <td>7</td>
                <td>7.5</td>
                <td>8</td>
                <td>8.5</td>
                <td>9</td>
                <td>9.5</td>
                <td>10</td>
                <td>10.5</td>
                <td>11</td>
            </tr>
            <tr>
                <td>US-Women's</td>
                <td>5</td>
                <td>5.5</td>
                <td>6</td>
                <td>6.5</td>
                <td>7</td>
                <td>7.5</td>
                <td>7</td>
                <td>8.5</td>
                <td>9</td>
                <td>9.5</td>
                <td>10</td>
                <td>10.5</td>
                <td>11</td>
                <td>11.5</td>
                <td>12</td>
                <td>12.5</td>
            </tr>
            <tr>
                <td>UK</td>
                <td>3</td>
                <td>3.5</td>
                <td>4</td>
                <td>4.5</td>
                <td>5</td>
                <td>5.5</td>
                <td>6</td>
                <td>6</td>
                <td>6.5</td>
                <td>7</td>
                <td>7.5</td>
                <td>8</td>
                <td>8.5</td>
                <td>9</td>
                <td>9.5</td>
                <td>10</td>
            </tr>
            <tr>
                <td>CM/JP</td>
                <td>22.5</td>
                <td>23</td>
                <td>23.5</td>
                <td>23.5</td>
                <td>24</td>
                <td>24</td>
                <td>24.5</td>
                <td>25</td>
                <td>25.5</td>
                <td>26</td>
                <td>26.5</td>
                <td>27</td>
                <td>27.5</td>
                <td>28</td>
                <td>28.5</td>
                <td>29</td>
            </tr>
            <tr>
                <td>EU</td>
                <td>35.5</td>
                <td>36</td>
                <td>36.5</td>
                <td>37.5</td>
                <td>38</td>
                <td>38.5</td>
                <td>39</td>
                <td>40</td>
                <td>40.5</td>
                <td>41</td>
                <td>42</td>
                <td>42.5</td>
                <td>43</td>
                <td>44</td>
                <td>44.5</td>
                <td>45</td>
            </tr>
            </tbody>
        </table>
    </div></div>

    <div class="sizeChartContainer"><div id="women-table" class="sub-table">
        <table class="sizeChart" border="0" cellpadding="10" cellspacing="0" width="100%">
            <h2>Women's Shoes</h2>
            <tbody>

            <tr>
                <td>US-Women's</td>
                <td>5</td>
                <td>5.5</td>
                <td>6</td>
                <td>6.5</td>
                <td>7</td>
                <td>7.5</td>
                <td>7</td>
                <td>8.5</td>
                <td>9</td>
                <td>9.5</td>
                <td>10</td>
                <td>10.5</td>
                <td>11</td>
                <td>11.5</td>
                <td>12</td>
                <td>12.5</td>
            </tr>
            <tr>
                <td>US-Men's</td>
                <td>3.5</td>
                <td>4</td>
                <td>4.5</td>
                <td>5</td>
                <td>5.5</td>
                <td>6</td>
                <td>6.5</td>
                <td>7</td>
                <td>7.5</td>
                <td>8</td>
                <td>8.5</td>
                <td>9</td>
                <td>9.5</td>
                <td>10</td>
                <td>10.5</td>
                <td>11</td>
            </tr>
            <tr>
                <td>UK</td>
                <td>3</td>
                <td>3.5</td>
                <td>4</td>
                <td>4.5</td>
                <td>5</td>
                <td>5.5</td>
                <td>6</td>
                <td>6</td>
                <td>6.5</td>
                <td>7</td>
                <td>7.5</td>
                <td>8</td>
                <td>8.5</td>
                <td>9</td>
                <td>9.5</td>
                <td>10</td>
            </tr>
            <tr>
                <td>CM/JP</td>
                <td>22.5</td>
                <td>23</td>
                <td>23.5</td>
                <td>23.5</td>
                <td>24</td>
                <td>24</td>
                <td>24.5</td>
                <td>25</td>
                <td>25.5</td>
                <td>26</td>
                <td>26.5</td>
                <td>27</td>
                <td>27.5</td>
                <td>28</td>
                <td>28.5</td>
                <td>29</td>
            </tr>
            <tr>
                <td>EU</td>
                <td>35.5</td>
                <td>36</td>
                <td>36.5</td>
                <td>37.5</td>
                <td>38</td>
                <td>38.5</td>
                <td>39</td>
                <td>40</td>
                <td>40.5</td>
                <td>41</td>
                <td>42</td>
                <td>42.5</td>
                <td>43</td>
                <td>44</td>
                <td>44.5</td>
                <td>45</td>
            </tr>
            </tbody>
        </table>
    </div></div>
    <div class="sizeChartContainer"><div id="kid-table" class="sub-table">
        <h2>Kids' shoes</h2>
        <table class="sizeChart" border="0" cellpadding="10" cellspacing="0" width="100%">


            <tr>
                <td>US-Kid's</td>
                <td>1Y</td>
                <td>1.5Y</td>
                <td>2Y</td>
                <td>2.5Y</td>
                <td>3Y</td>
                <td>3.5Y</td>
                <td>4Y</td>
                <td>4.5Y</td>
                <td>5Y</td>
                <td>5.5Y</td>
                <td>6Y</td>
                <td>6.5Y</td>
                <td>7Y</td>

            </tr>
            <tr>
                <td>Uk</td>
                <td>13.5</td>
                <td>1</td>
                <td>1.5</td>
                <td>2</td>
                <td>2.5</td>
                <td>3</td>
                <td>3.5</td>
                <td>4</td>
                <td>4.5</td>
                <td>5</td>
                <td>5.5</td>
                <td>6</td>
                <td>6</td>

            </tr>
            <tr>
                <td>CM/JP</td>
                <td>20</td>
                <td>20.5</td>
                <td>21</td>
                <td>21.5</td>
                <td>22</td>
                <td>22.5</td>
                <td>23</td>
                <td>23.5</td>
                <td>23.5</td>
                <td>24</td>
                <td>24</td>
                <td>24.5</td>
                <td>25</td>
            </tr>
            <tr>
                <td>EU</td>
                <td>32</td>
                <td>33</td>
                <td>33.5</td>
                <td>34</td>
                <td>35</td>
                <td>35.5</td>
                <td>36</td>
                <td>36.5</td>
                <td>37.5</td>
                <td>38</td>
                <td>38.5</td>
                <td>39</td>
                <td>40</td>

            </tr>

            <tr>
                <td>Foot Length(cm)</td>
                <td>20.1</td>
                <td>20.5</td>
                <td>20.9</td>
                <td>21.4</td>
                <td>21.8</td>
                <td>22.2</td>
                <td>22.4</td>
                <td>22.7</td>
                <td>23.2</td>
                <td>23.5</td>
                <td>23.8</td>
                <td>24.3</td>
                <td>24.6</td>

            </tr>

        </table>
    </div>
    </div>

    <h2 class='options'><button id="closeButton">Close</button></h2>

</div>


    <script src="js/sizeguide.js"></script>

</body>
</html>

