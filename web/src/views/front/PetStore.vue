<template>
  <div style="width: 60%;margin: 0 auto">
    <el-space direction="vertical" alignment="left" style="width: 100%">
      <el-card shadow="hover">
        <el-space style="flex-wrap: wrap; gap: 15px;">
          <el-input
              v-model="searchForm.storeName"
              placeholder="请输入店铺名称"
              style="width: 300px;"
              clearable
          />
          <el-input
              v-model="searchForm.storeAddress"
              placeholder="请输入店铺地址"
              style="width: 300px;"
              clearable
          />
          <el-button type="primary" :icon="Search" @click="search">搜索</el-button>
        </el-space>
      </el-card>

      <el-card
          v-for="(item,index) in listData"
          shadow="hover"
      >
        <el-descriptions
            class="margin-top"
            :title="item.storeName"
            :column="3"
            border
        >
          <template #extra>
            <el-button type="primary" @click="copy(item)">联系商家</el-button>
          </template>
          <el-descriptions-item>
            <template #label>
              <div class="cell-item">
                <el-icon>
                  <user/>
                </el-icon>
                店长
              </div>
            </template>
            {{ item.username }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template #label>
              <div class="cell-item">
                <el-icon>
                  <iphone/>
                </el-icon>
                电话
              </div>
            </template>
            {{ item.tel }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template #label>
              <div class="cell-item">
                <el-icon>
                  <location/>
                </el-icon>
                开业时间
              </div>
            </template>
            {{ item.createTime }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template #label>
              <div class="cell-item">
                <el-icon>
                  <office-building/>
                </el-icon>
                地址
              </div>
            </template>
            {{ item.storeAddress }}
          </el-descriptions-item>
        </el-descriptions>
      </el-card>
      <el-card>
        <el-pagination
            @current-change="currentChange"
            @size-change="sizeChange"
            :page-size="pageInfo.pageSize"
            :current-page="pageInfo.pageNum"
            background
            layout="total,sizes, prev, pager, next"
            :total="pageInfo.total">
        </el-pagination>
      </el-card>

    </el-space>
    <el-dialog
        v-model="dialogOpen"
        v-if="dialogOpen"
        :title="formData.id?'编辑':'新增'"
        width="800"
    >
      <el-form ref="formRef" :model="formData" label-width="100px">

          <el-form-item label="标题" prop="title"
                        :rules="[{required:true,message:'不能为空',trigger:[ 'blur','change']}]">
            <el-input v-model="formData.title"></el-input>
          </el-form-item>
          <el-form-item label="内容" prop="content">
            <MyEditor :content="formData.content" @content-change="formData.content =$event"
                      v-if="dialogOpen"></MyEditor>
          </el-form-item>


      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submit" :icon="Check">提交</el-button>
          <el-button @click="closeDialog" :icon="Close">取消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import request from "@/utils/http.js";
import {Check, Close, Delete, Edit, Refresh, Plus, Search} from '@element-plus/icons-vue'
import {ref, toRaw} from "vue";
import {ElMessage, ElMessageBox} from "element-plus";
import MyEditor from "@/components/MyEditor.vue";
import tools from "@/utils/tools.js";
import {useRoute} from "vue-router";

const searchFormComponents = ref();
const tableComponents = ref();
const listData = ref([]);
const pageInfo = ref({
  //当前页
  pageNum: 1,
  //分页大小
  pageSize: 10,
  //总条数
  total: 0
});
const searchForm = ref({
  storeName: undefined,
  storeAddress: undefined
});
const route = useRoute()
if (route.query.storeName) {
  searchForm.value.storeName = route.query.storeName
}

getPageList()

/**
 * 获取分页数据
 */
function getPageList() {
  let data = Object.assign(toRaw(searchForm.value), toRaw(pageInfo.value))
  request.get("/petStoreManager/page", {
    params: data
  }).then(res => {
    listData.value = res.data.list
    pageInfo.value.total = res.data.total
  })
}

/**
 * 选择分页
 * @param e
 */
function currentChange(e) {
  pageInfo.value.pageNum = e
  getPageList()
}

/**
 * 改变分页数量
 * @param e
 */
function sizeChange(e) {
  pageInfo.value.pageSize = e
  getPageList()
  console.log(e)
}

/**
 * 搜索
 */
function search() {
  pageInfo.value.pageNum = 1
  getPageList()
}

function copy(row) {
  navigator.clipboard.writeText(row.tel)
      .then(() => {
        ElMessage.success("联系电话已复制")
      })
      .catch(err => {
        console.error('复制失败:', err);
      });
}

</script>

<style scoped>


</style>
