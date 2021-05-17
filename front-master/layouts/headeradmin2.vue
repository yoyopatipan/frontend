<template>
    <div>
        <b-navbar type="faded" variant="light" class="c">
            <b-navbar-brand href="#" class="ml-3"> 
                <img src="~assets/Logoweb1.png">
            </b-navbar-brand>
            <b-navbar-brand href="#" class="ml-auto" v-b-toggle.sidebar-backdrop> 
                <img src="~assets/menu1.png">
            </b-navbar-brand>
        </b-navbar>
        <b-sidebar
                id="sidebar-backdrop"
                bg-variant="primary"
                text-variant="light"
                backdrop
                right
                shadow="lg"
                >
                <div class="px-3 py-2">
                    <b-nav vertical>
                    <b-nav-item href="http://localhost:3000/admin/home2"><p class="a">หน้าแรก</p></b-nav-item>  <!-- b-nav-item ไม่มี property style color -->
                    <b-nav-item><p class="a">สรุปข้อมูลปฏิสัมพันธ์ของเว็บ</p></b-nav-item>
                    <b-nav-item><p class="a">อัพเดทโมเดล</p></b-nav-item>
                    <b-nav-item><p class="a">ออกจากระบบ</p></b-nav-item>
                    </b-nav>
                </div>
        </b-sidebar>
        <nuxt/>
    </div>
</template>

<style>
/* import font Kanit */
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
/* import font K2D */
@import url('https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');
.a {
     color:white;
     font-family: 'K2D', sans-serif;
     font-size: 25px;
}

.a:hover {
    border-left: solid white;
    padding-left: 15px;
    border-width: 4px;
}

.c {
    position: fixed;
    /*ทำให้เป็นคนละ layer*/
    z-index: 2;
    width: 100%;
}

</style>