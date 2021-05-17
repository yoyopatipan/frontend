<template>
    <div>
        <b-carousel
        id="carousel1"
        :interval="3000"
        controls
        indicators
        fade
        >
            <b-carousel-slide img-src="~assets/home3.png" class="mt">
            </b-carousel-slide>
            <b-carousel-slide img-src="~assets/home5.png" class="mt">
            </b-carousel-slide>
        </b-carousel>
        <h1 class="b">
            ยินดีต้อนรับเข้าสู่เว็บไซต์ที่ให้บริการตรวจความเสี่ยงการเป็นโรคเบาหวานและโรคหัวใจ
        </h1>
    </div>
</template>

<style>
/* import font Kanit */
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
/* import font K2D */
@import url('https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');
.b {
     color:black;
     font-family: 'K2D', sans-serif;
     font-size: 40px;
     text-align: center;
     padding: 70px;
}

.mt {
    margin-top: 90px;
}
</style>

<script>
export default {
    layout:"headerguest"

}
</script>