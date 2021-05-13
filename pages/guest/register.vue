<template>
    <div>
        <div class="o">
        <p class="b">ระบบลงทะเบียน</p>
            <hr class="solid">

        <p class="p">กรุณากรอกข้อมูลเพื่อทำการลงทะเบียน</p>

        <p class="q">อีเมล</p>
        <b-input-group class="mb-2" size="lg">
        <b-input-group-prepend is-text>
        <b-icon icon="envelope-fill"></b-icon>
        </b-input-group-prepend>
        <b-form-input type="text" v-model="register.Email" placeholder="โปรดกรอกอีเมลของท่านลงในช่องนี้" style="font-family: 'K2D', sans-serif; font-size: 20px; font-weight: bold;"></b-form-input>
        </b-input-group>

        <p class="r">รหัสผ่าน</p>
        <b-input-group class="mb-2" size="lg">
        <b-input-group-prepend is-text>
        <b-icon icon="person-fill"></b-icon>
        </b-input-group-prepend>
        <b-form-input type="text" v-model="register.Password" placeholder="โปรดกรอกรหัสผ่านของท่านลงในช่องนี้" style="font-family: 'K2D', sans-serif; font-size: 20px; font-weight: bold;"></b-form-input>
        </b-input-group>

        <p class="r">ยืนยันรหัสผ่าน</p>
        <b-input-group class="mb-2" size="lg">
        <b-input-group-prepend is-text>
        <b-icon icon="person-fill"></b-icon>
        </b-input-group-prepend>
        <b-form-input type="text" v-model="register.rePassword" placeholder="โปรดยืนยันรหัสผ่านของท่านลงในช่องนี้" style="font-family: 'K2D', sans-serif; font-size: 20px; font-weight: bold;"></b-form-input>
        </b-input-group>

        <b-button type="submit" value="submit" @click="regis"
            variant="outline-warning" 
            style="font-family: 'K2D', sans-serif; font-size: 20px; font-weight: bold; letter-spacing: 0.5px;
                    border-width:3px; border-radius:5px; transition-duration: 0.4s; padding: 10px 15px; margin-left:42%; margin-top:50px;">
            ลงทะเบียน
        </b-button>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    layout:"headerguest",

    data() {
        return {
            register: []
        }
    },

    methods: {
        regis: async function(e) {
        e.preventDefault();

        try {
            const response = await axios.post('http://localhost:1337/register', this.register)
            console.log(response);
        } catch(error) {
        this.error = error;
        }
        }
    }
}
</script>

<style>
/* import font Kanit */
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
/* import font K2D */
@import url('https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');

.b {
    color:darkslategray;
    font-family: 'K2D', sans-serif;
    font-size: 60px;
    text-align: center;
    padding-top: 200px;
}

.o{
    margin-left: 500px;
    margin-right: 500px;
    margin-bottom: 100px;
    padding-left: 50px;
    padding-right: 50px;
    padding-bottom: 50px;
}

.p {
    color:black;
    font-family: 'K2D', sans-serif;
    font-size: 30px;
    font-weight: bold;
    margin-top:50px;
}

.q {
    color:darkslategray;
    font-family: 'K2D', sans-serif;
    font-size: 25px;
}

.r {
    margin-top:20px;
    color:darkslategray;
    font-family: 'K2D', sans-serif;
    font-size: 25px;
}

</style>