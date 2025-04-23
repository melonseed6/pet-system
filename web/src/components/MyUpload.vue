<template>
  <div>
    <el-upload
        ref="upload"
        :action="uploadUrl"
        :list-type="listType"
        :on-preview="handlePreview"
        :file-list="fileList"
        :limit="limit"
        :accept="accept"
        :headers="uploadHeaders"
        :before-upload="handleBeforeUpload"
        :on-success="handleFileSuccess"
        :on-exceed="handleExceed"
        :on-remove="handleRemove">
      <el-button size="small" type="primary"> {{
          limit === 1 && fileList.length > 0 ? '点击替换' : '点击上传'
        }}
      </el-button>
      <div slot="tip" class="el-upload__tip">{{ tip }}</div>
    </el-upload>
    <el-dialog v-model="dialogVisible">
      <div> {{ file.url }}
        <img v-if="type==='image'||type==='imageCard'" width="100%" :src="file.url" alt="">
        <video v-if="type==='video'" width="100%" :src="file.url" controls></video>
        <audio v-if="type==='audio'" width="100%" :src="file.url" controls></audio>
      </div>

    </el-dialog>
  </div>
</template>

<script setup>
import {ref, reactive, onMounted} from 'vue';
import utils from "@/utils/tools.js";
import {ElMessage, genFileId} from "element-plus";

const props = defineProps({
  type: {
    type: String,
    default: "file"
  },
  files: {
    type: String,
    default: ""
  },
  tip: {
    type: String,
    default: ""
  },
  limit: {
    type: Number,
    default: 100
  }
});
const upload = ref()
const uploadHeaders = reactive({
  token: utils.getToken()
});

const uploadUrl = ref('');
const fileList = ref([]);
const accept = ref('');
const listType = ref('picture-card');
const dialogVisible = ref(false);
const file = ref('');

onMounted(() => {
  uploadUrl.value = import.meta.env.VITE_APP_API_URL + "/file/upload";
  load();
  console.log(uploadUrl.value);
});

function load() {
  if (props.files) {
    let files = props.files.split(",");
    for (let file of files) {
      let strings = file.split("/");
      fileList.value.push({
        name: strings[strings.length-1],
        url: file
      });
    }
  }
  switch (props.type) {
    case "imageCar":
      listType.value = "picture-card";
      accept.value = "image/*";
      break;
    case "image":
      listType.value = "picture";
      accept.value = "image/*";
      break;
    case "video":
      accept.value = "video/*";
      listType.value = "text";
      break;
    case "audio":
      accept.value = "audio/*";
      listType.value = "text";
      break;
    case "file":
      listType.value = "text";
      break;
  }
}

const emit = defineEmits(['setFiles']);

function setFiles() {
  let files = fileList.value.map((item) => {
    return item.url;
  });
  emit("setFiles", files.join(","));
}

function handleFileSuccess(response, file, fileListRes) {
  fileList.value.push({
    name: response.data.name,
    url:response.data.url
  });
  setFiles();
}

function handleRemove(file, fileListRes) {
  fileList.value = fileListRes;
  setFiles();
}

function handlePreview(file) {
  file.value = file;
  if (props.type === "file") {
    downloadFile();
    return;
  }
  dialogVisible.value = true;
}

function handleBeforeUpload(file) {

}

function handleExceed(files) {
  if (props.limit === 1) {
    // 这个方法会移除数组的最后一个元素，并返回被移除的元素。如果数组为空，则返回 undefine
    fileList.value.pop()
    upload.value.clearFiles()
    const file = files[0];
    file.uid = genFileId()
    upload.value.handleStart(file)
    upload.value.submit()
  } else {
    ElMessage.warning(`最多只允许上传${props.limit}张图片`);
  }
}

function downloadFile() {
  const link = document.createElement('a');
  link.style.display = 'none';
  document.body.appendChild(link);
  link.href = file.value.url;
  console.log(file.value);
  link.setAttribute('download', file.value.name); // 你可以自定义下载时的文件名
  link.click();
  link.remove();
}
</script>


<style>
</style>
