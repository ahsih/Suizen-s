<?php
/**
 * Created by PhpStorm.
 * User: Jack
 * Date: 01/06/2018
 * Time: 18:35
 */
?>
<div id="TitleHeading" class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-lg-7">
            <h2><a class="titleNavBar" href="{{ url('/home') }}">Suizen Noodle Bar</a></h2>
            <h2><a class="secondTitleNavBar" href="{{ url('/home') }}">广东楼</a></h2>
        </div>
        <div class="col-sm-12 col-lg-5">
            <nav class="navBarMarginRight">
                <p class="paragraphInline" id="firstNavBar"><a class="subNavBarParagraph" href="{{ url('/home') }}">Home
                        主页</a></p>
                <p class="paragraphInline" id="secondNavBar"><a class="subNavBarParagraph"
                        href="{{ url('/combo') }}">Combo Meal
                        套餐</a></p>
                <p class="paragraphInline" id="thirdNavBar"><a class="subNavBarParagraph"
                        href="{{ url('/menu') }}">Menu 餐牌</a></p>
                <p class="paragraphInline" id="fourthNavBar"><a class="subNavBarParagraph"
                        href="{{ url('/gallery') }}">Gallery 图片</a></p>
                <p class="paragraphInline" id><a class="subNavBarParagraph" href="{{ url('/contact') }}">Contact Us
                        联系方式</a></p>
            </nav>
        </div>
    </div>
</div>