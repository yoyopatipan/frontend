<template>
    <div class="o">
        <p class="b">แบบฟอร์มประเมินความเสี่ยงการเป็นโรคหัวใจ</p>
        <b-form  @submit="onSubmit3">
        <div class="h"> 
            <div class="i">
            <label for="age" class="j">อายุ</label>
            <b-form-spinbutton id="age" v-model="value2.age" inline
            min="0"
            max="200"
            size="lg"
            ></b-form-spinbutton>
            <label for="age" class="j">ปี</label>
            </div>

            <div class="i">
            <label for="glucose" class="m">ระดับน้ำตาลในเลือด</label>
            <b-form-spinbutton id="glucose" v-model="value2.glucose" inline
            min="0"
            max="250"
            size="lg"
            step="0.1"
            ></b-form-spinbutton>
            <label for="glucose" class="m">มล./ดล.</label>
            </div>

            <div class="i">
            <label for="waist" class="n">ความยาวรอบเอว</label>
            <b-form-spinbutton id="glucose" v-model="value2.waist" inline
            min="0"
            max="300"
            size="lg"
            step="0.1"
            ></b-form-spinbutton>
            <label for="waist" class="n">ซม.</label>
            </div>

            <div class="i">
            <label for="pressurehigh" class="p">ความดันสูงสุดขณะหัวใจบีบตัว</label>
            <b-form-spinbutton id="pressurehigh" v-model="value2.pressurehigh" inline
            min="0"
            max="250"
            size="lg"
            step="0.1"
            ></b-form-spinbutton>
            <label for="pressurehigh" class="p">มม.ปรอท</label>
            </div>

            <div class="i">
            <label for="pressurelow" class="p">ความดันต่ำสุดขณะหัวใจคลายตัว</label>
            <b-form-spinbutton id="pressurelow" v-model="value2.pressurelow" inline
            min="0"
            max="250"
            size="lg"
            step="0.1"
            ></b-form-spinbutton>
            <label for="pressurelow" class="p">มม.ปรอท</label>
            </div>

            <div class="i">
            <label for="choresterolall" class="m">คลอเรสเตอรอลทั้งหมด</label>
            <b-form-spinbutton id="chloresterolall" v-model="value2.chloresterolall" inline
            min="0"
            max="500"
            size="lg"
            step="0.1"
            ></b-form-spinbutton>
            <label for="chloresterolall" class="m">มก.ดล</label>
            </div>

            <div class="i">
            <label for="HDL" class="q">คลอเรสเตอรอลHDL</label>
            <b-form-spinbutton id="HDL" v-model="value2.hdl" inline
            min="0"
            max="150"
            size="lg"
            step="0.1"
            ></b-form-spinbutton>
            <label for="HDL" class="q">มก.ดล</label>
            </div>
        </div>
        <b-button type=submit size="lg" variant="primary" style="margin-left:320px; margin-top:50px; font-family: 'K2D', sans-serif; font-size: 25px; ">ประเมินความเสี่ยง</b-button>
        </b-form>
    </div>
</template>

<script>
import axios from '@nuxtjs/axios'
export default {
    layout:"headerguest",
    data() {
      return {
          value2:{
            age: 40,
            glucose: 100,
            waist: 70,
            pressurehigh: 120,
            pressurelow: 80,
            chloresterolall: 175,
            hdl: 50
            }
      }
    },
    methods: {
      onSubmit3(event) {
        event.preventDefault()
        alert(JSON.stringify(this.value2))
      }
    }
}
</script>

<style>
/* import font Kanit */
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
/* import font K2D */
@import url('https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');

.o {
    margin-left: 475px;
    margin-right: 475px;
    padding-left: 50px;
    padding-right: 50px;
    padding-bottom: 50px;
}

.b {
    color:darkslategray;
    font-family: 'K2D', sans-serif;
    font-size: 40px;
    text-align: center;
    padding-top: 200px;
}

.h {
    margin-top: 50px;
    background-color:rgb(226, 226, 226);
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 20px;
    border-style: ridge;
    border-width: 3px;
}

.i {
    background-color: rgb(255, 255, 255);
    padding-top: 30px;
    margin-top: 20px;
    border-style: outset;
}

.j {
    font-family: 'K2D', sans-serif;
    font-size: 25px;
    margin-left: 150px;
    margin-right: 150px;
    margin-bottom: 30px;
}

.k {
    font-family: 'K2D', sans-serif;
    font-size: 25px;
    margin-left: 140px;
    margin-right: 130px;
    margin-bottom: 30px;
}

.l {
    font-family: 'K2D', sans-serif;
    font-size: 25px;
    margin-left: 140px;
    margin-right: 125px;
    margin-bottom: 30px;
}

.m {
    font-family: 'K2D', sans-serif;
    font-size: 25px;
    margin-left: 80px;
    margin-right: 90px;
    margin-bottom: 30px;
}

.n {
    font-family: 'K2D', sans-serif;
    font-size: 25px;
    margin-left: 100px;
    margin-right: 100px;
    margin-bottom: 30px;
}

.p {
    font-family: 'K2D', sans-serif;
    font-size: 25px;
    margin-left: 55px;
    margin-right: 55px;
    margin-bottom: 30px;
}

.q {
    font-family: 'K2D', sans-serif;
    font-size: 25px;
    margin-left: 95px;
    margin-right: 95px;
    margin-bottom: 30px;
}
</style>