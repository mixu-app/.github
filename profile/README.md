# 谜序 Mixu

**记住每一个线索，推理留给你。**

谜序是一款面向悬疑、推理小说的**离线优先阅读器**：它把"你已经读到的内容"整理成一张
可点击的案情板——人物、地点、事件、各执一词的证词，都能跳回原文；没读到的，它不会提前
告诉你。

> 目前处于**文档与架构阶段**：下面写的是设计目标，不是已经发布的功能。

## 我们相信

- **不主动剧透。** 案情板按阅读进度做确定性过滤，并且用可失败的回归测试守着这条线。
- **不强制注册。** 导入、阅读、书签、笔记、已下载的图包，离线可用，不登录也能读完一本书。
- **声称不是事实。** 证词、旁白、推断、后来的确认，在界面里始终分得开。
- **只帮记忆，不替推理。** 不主动给嫌疑人排序，不替读者解谜。
- **可导出，可撤回。** 你的笔记和标注属于你。

## 开源仓库

| 仓库 | 内容 | 许可 |
|---|---|---|
| [mixu-client](https://github.com/mixu-app/mixu-client) | Android/KMP 客户端：阅读器与案情板 | MPL-2.0 |
| [mixu-graph](https://github.com/mixu-app/mixu-graph) | 时序叙事图：模型、投影、查询 | Apache-2.0 |
| [mixu-spoiler](https://github.com/mixu-app/mixu-spoiler) | 知识边界过滤（防剧透） | Apache-2.0 |
| [mixu-renderer](https://github.com/mixu-app/mixu-renderer) | Compose Canvas 图谱渲染 | Apache-2.0 |
| [mixu-contracts](https://github.com/mixu-app/mixu-contracts) | 叙事图格式、HTTP 契约、错误码 | Apache-2.0 |
| [mixu-website](https://github.com/mixu-app/mixu-website) | 落地页（bun-only 静态站 + 中文文案） | Apache-2.0 |
| [mixu-fixtures](https://github.com/mixu-app/mixu-fixtures) | 版权干净的剧透回归语料 | CC0-1.0 |

客户端与核心库开源，是为了让"不做剧透"这件事可以被外部检查。客户端用 MPL-2.0（改了的
文件要公开，仍可商业分发），核心库用 Apache-2.0（别的项目可以直接复用，不必继承客户端的
约束）。开源的是代码，不是云服务、品牌或第三方图书内容。

## 从这里开始

- 想参与客户端：读 [mixu-client](https://github.com/mixu-app/mixu-client) 的 `AGENTS.md` 与
  [贡献指南](https://github.com/mixu-app/mixu-client/blob/main/CONTRIBUTING.md)。
- 想复用图模型或防剧透过滤：从 [mixu-graph](https://github.com/mixu-app/mixu-graph) 与
  [mixu-spoiler](https://github.com/mixu-app/mixu-spoiler) 的 `docs/design.md` 开始。
- 想验证数据格式：看 [mixu-contracts](https://github.com/mixu-app/mixu-contracts)。
- 关心剧透问题怎么测：看 [mixu-fixtures](https://github.com/mixu-app/mixu-fixtures)。

## 联系方式

- 安全问题：走对应仓库的 GitHub 私密漏洞报告（Security → Report a vulnerability），
  不要在公开 issue 里贴细节。
- 其他问题：在相关仓库开 issue。

## 许可

各仓库许可见上表；开源范围与许可选型的决定记录在维护者内部文档中。
「Mixu」「谜序」名称与 Logo 不在任何开源许可范围内（见
[商标政策](./TRADEMARKS.md)），第三方图书内容不在任何许可范围内。
