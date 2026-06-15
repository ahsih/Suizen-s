<!doctype html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta name="description" content="Suizen Noodle Bar in Selly Oak, Birmingham serving Cantonese noodles, rice bowls and Chinese takeaway favourites." />
    <meta name="google-site-verification" content="_V-arpPAUgr_mMGBkU85VklBJ1oG7qoNji1FI12DLaY" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="{{asset('css/app.css')}}" />
    <link rel="stylesheet" href="{{asset('css/navbar.css')}}" />
    <link rel="stylesheet" href="{{asset('css/homeCSS.css')}}" />
    <link rel="stylesheet" href="{{asset('css/Notice.css')}}" />
    <title>Suizen Noodle Bar | 广东楼 Selly Oak</title>
</head>

<body class="home-page">
    @include('include.navbar')
    @include('include.Notice')

    <main>
        <section class="hero-section">
            <div class="hero-content">
                <p class="eyebrow">广东风味 · Selly Oak</p>
                <h1>Suizen Noodle Bar</h1>
                <p class="hero-chinese">广东楼</p>
                <p class="hero-copy">
                    Cantonese rice bowls and Chinese takeaway favourites. Serving students, families and regulars in Selly Oak, Birmingham.
                </p>
                <div class="hero-actions">
                    <a class="primary-button" href="{{ url('/menu') }}">View menu 菜单</a>
                    <a class="secondary-button" href="tel:01214720003">Call 0121 472 0003</a>
                </div>
                <div class="service-strip" aria-label="Restaurant service information">
                    <div>
                        <span>Open</span>
                        <strong>Mon-Sat</strong>
                    </div>
                    <div>
                        <span>Kitchen</span>
                        <strong>11:30am-9:30pm</strong>
                    </div>
                    <div>
                        <span>Find us</span>
                        <strong>Opposite Aldi</strong>
                    </div>
                </div>
            </div>
            <div class="hero-gallery" aria-label="Featured dishes">
                <img class="hero-image hero-image-main" src="{{ asset('Images/SlideOne/Roast_Duck_Rice.png') }}" alt="Roast duck rice" />
                <img class="hero-image hero-image-small top" src="{{ asset('Images/SlideOne/Traditional_Cantonese_Beef_Brisket.png') }}" alt="Traditional Cantonese beef brisket rice" />
                <img class="hero-image hero-image-small bottom" src="{{ asset('Images/GalleryFive/Mapo_ToFu.png') }}" alt="Mapo tofu" />
            </div>
        </section>

        <section class="signature-section">
            <div class="section-heading">
                <p class="eyebrow">招牌推荐</p>
                <h2>House favourites</h2>
                <p>Comforting Cantonese plates, spicy wok dishes and quick lunch bowls made for students, families and regulars.</p>
            </div>
            <div class="dish-grid">
                <article class="dish-card">
                    <img src="{{ asset('Images/SlideOne/Roast_Duck_Rice.png') }}" alt="Fukien fried rice" />
                    <div>
                        <h3>Roast Duck Rice</h3>
                        <p>烤鸭饭</p>
                    </div>
                </article>
                <article class="dish-card">
                    <img src="{{ asset('Images/SlideOne/Cumin_Chili_Beef.png') }}" alt="Cumin chilli beef" />
                    <div>
                        <h3>Cumin Chilli Beef</h3>
                        <p>孜然牛肉饭</p>
                    </div>
                </article>
                <article class="dish-card">
                    <img src="{{ asset('Images/SlideTwo/CharSiu_Honey_Sauce.png') }}" alt="Char siu honey sauce rice" />
                    <div>
                        <h3>Char Siu Honey Sauce</h3>
                        <p>蜜汁叉烧饭</p>
                    </div>
                </article>
                <article class="dish-card">
                    <img src="{{ asset('Images/GalleryFour/Crisp_Shredded_Beef.png') }}" alt="Crispy shredded beef" />
                    <div>
                        <h3>Crispy Shredded Beef</h3>
                        <p>干炒牛丝</p>
                    </div>
                </article>
            </div>
        </section>

        <section class="visit-section">
            <div class="visit-panel">
                <p class="eyebrow">Visit us 到店</p>
                <h2>622 Bristol Road, Selly Oak</h2>
                <p>Birmingham B29 6BQ, opposite Aldi. Free parking is usually available on the street or on Hubert Road.</p>
                <div class="visit-actions">
                    <a class="primary-button" href="{{ url('/contact') }}">Contact details</a>
                    <a class="secondary-button" href="{{ url('/combo') }}">Combo meals 套餐</a>
                </div>
            </div>
            <div class="info-stack">
                <div class="info-card">
                    <span>Hours 营业时间</span>
                    <strong>Monday to Saturday</strong>
                    <p>11:30am to 9:30pm · Closed Sunday</p>
                </div>
                <div class="info-card">
                    <span>Ordering 订餐</span>
                    <strong>0121 472 0003</strong>
                    <p>Delivery is currently unavailable.</p>
                </div>
                <div class="wechat-card">
                    <img src="{{ asset('Images/HomepageImages/SuizenWeChat.JPG') }}" alt="Suizen WeChat QR code" />
                    <div>
                        <span>WeChat 微信</span>
                        <strong>Currently unavailable</strong>
                        <p>Please call the restaurant for today's orders.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>

</html>
