---
title: "工程笔记"
---

<div class="exploration-page engineering-page">
  <p class="eyebrow">ENGINEERING ROOM</p>
  <h1>实现之后，<br><em>还要解释为什么。</em></h1>
  <p class="page-lede">这些文章记录 NiuMa 在 runtime 抽象、daemon 架构、鉴权和例程执行上的工程取舍。它们是四条探索线的证据库，不是产品宣传的替身。</p>

  <section class="reading-list">
    <a href="/posts/runtime-abstraction"><small>RUNTIME</small><h2>统一多种 Agent Runtime</h2><p>把不同 CLI 的进程、会话、传输与中断语义收敛到同一执行契约。</p><strong>阅读 →</strong></a>
    <a href="/specs/2026-05-14-wm-vs-slock-daemon-comparison"><small>ARCHITECTURE</small><h2>daemon 架构选型对比</h2><p>执行为何留在用户本机，以及两种 daemon 方案如何取舍。</p><strong>阅读 →</strong></a>
    <a href="/specs/2026-06-11-runtime-auth-detection-matrix"><small>RELIABILITY</small><h2>runtime 鉴权检测矩阵</h2><p>不把“进程存在”误判为“可执行”；登录和能力都需要被验证。</p><strong>阅读 →</strong></a>
  </section>
  <p class="engineering-more">更多设计文档在 <a href="/specs/">工程笔记目录</a>。公开代码集中在 <a href="https://github.com/omiyeong/niuma-core">niuma-core</a>；完整平台仍未开源。</p>
</div>
