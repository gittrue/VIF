<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <!-- Подписка -->
                <div id="advanced-newsletter-box1" style="padding:0px;">
                    <label class="heading-title slab mgb15">ОФОРМИТЬ ПОДПИСКУ</label>
                    <div class="box-newsletter-subscribe" id="mail-box">
                        <input type="text" name="email" placeholder="Ваш Email" style="color: black;" />
                        <span class="input-group-btn">
                                            <button class="plr0 btn btn-brown enter-subscribe " type="button">ПОДПИСАТЬСЯ</button>
                                        </span>
                    </div>
                </div>
                <div id="logo">
                    <?php if ($logo) { ?>
                        <a href="<?php echo $home; ?>"><img  src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                        <?php } else { ?>
                            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                            <?php } ?>
                </div>
            </div>

            <div class="col-md-2">
                <!-- Логин -->


                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="heading-title slab mgb15" for="input-email">ЛИЧНЫЙ КАБИНЕТ</label>
                        <input type="text" name="email" value="" placeholder="Логин" id="input-email" />
                    </div>


                    <input type="password" name="password" value="" placeholder="Пароль" id="input-password" />
                    <input type="submit" value="Авторизироваться" class="btn plr0 under btnUnset nothover" />
                    <br>
                    <a class="under" href="<?php echo $forgotten; ?>">Забыли пароль?</a>


                </form>




            </div>

            <div class="col-md-6">
                <!-- Новости -->
                <label class="heading-title slab mgb15">НОВОСТИ</label>
                <div class="row">

                    <?php $i=0; foreach (array_reverse($all_news) as $news) { 
                           if($i<3){ ?>


                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-8">
                                    <span class="titlenews">
                            <?php echo $news["date_added"];?>   
                          </span>
                                </div>
                                <div class="col-md-4">
                                    <a href=" <?php echo $news['link'];?>"> <i style="float: right;" class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <a href=" <?php echo $news['link'];?>"><img style="border: 1px solid white;" src="<?php echo $news['image'];?>" alt=""></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="margin-top:5px; text-align:center;">
                                    <a href=" <?php echo $news['link'];?>">
                                        <?php echo $news['title'];?>
                                    </a>
                                </div>
                            </div>
                        </div>


                        <?php $i++;
                            }
                            } ?>


                </div>

            </div>

            <div class="col-md-2 ">
                <div>
                    <label class="heading-title slab mgb15">
                        КАК НАЙТИ VIF
                    </label>
                    <div style="position:relative;">
                       <div>
                        <img src="image/map.png" alt="">
                        </div>
                        <div style="position:absolute;top: 0px;    line-height: 30px;">
                            <p><?php echo $data['address']; ?></p>
                        </div>
                    </div>
                </div>
                <!-- как найти виф -->
                <a href="#" title="titles"><i class="fa fa-instagram fsize28" ></i></a>
                <a href="#" title="titles"><i class="fa fa-google-plus fsize28" ></i></a>
                <a href="#" title="titles"><i class="fa fa-twitter fsize28" ></i></a>
                <a href="#" title="titles"><i class="fa fa-vk fsize28"></i></a>
                <a href="#" title="titles"><i class="fa fa-facebook fsize28" ></i></a>
                <p>2016 &copy; Divotek</p>
            </div>
        </div>
    </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body>

</html>
