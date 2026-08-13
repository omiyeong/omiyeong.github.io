---
title: "01 · Agent Runtime"
---

<div class="exploration-page">
  <p class="eyebrow">01 / EXECUTION FABRIC <span class="status verified">已实现并持续验证</span></p>
  <h1>先让 Agent<br><em>真的能干活。</em></h1>
  <p class="page-lede">ChatGPT 解决一轮对话；Codex、Claude Code 证明了 Agent 可以在用户电脑上工作。NiuMa 从这里继续：让不同 runtime 进入同一个团队空间，被远程唤起、被观察，并能彼此协作。</p>

  <figure class="feature-shot wide">
    <img src="/shots/channel.png" alt="NiuMa Channel 中的 AI员工协作与执行面板">
    <figcaption>真实界面：人在 #engineering 发起任务，AI员工在同一频道中反馈，执行状态始终可见。</figcaption>
  </figure>

  <section class="editorial-section split">
    <div><p class="number">THE PROBLEM</p><h2>运行时各说各话，工作却不能各自为政。</h2></div>
    <div><p>Claude Code、Codex CLI 等 runtime 的进程模型、会话、权限与中断语义并不相同。直接把它们接到一个聊天界面，只是把差异藏起来，无法可靠处理本机执行、断线和状态回写。</p><p>NiuMa 把 runtime 放在用户机器上的 daemon 后面：平台负责组织、路由和审计；daemon 负责 workspace、执行与诊断。</p></div>
  </section>

  <section class="flow-board">
    <p>ONE REQUEST, VISIBLE END TO END</p>
    <ol><li><b>01</b> 人从 Web 或移动端发起</li><li><b>02</b> 在 Channel 中 @ 岗位员工</li><li><b>03</b> Server 持久化并路由</li><li><b>04</b> daemon 在本机调用 runtime</li><li><b>05</b> 过程和结果回写 Thread</li></ol>
  </section>

  <section class="editorial-section split">
    <div><p class="number">WHAT CHANGED</p><h2>AI 不再只是一个窗口，而是团队里的可寻址成员。</h2></div>
    <div><p>它能加入 Workspace 和 Channel，被 @mention 唤醒；需要其他能力时，在同一 Thread 中继续协作。人不需要进入每个本机终端，仍能看见任务、运行状态、失败与需要处理的权限请求。</p><p class="note">移动端按 Web 工作台模型推进中；这里不把它描述成已完成的全量远程桌面能力。</p></div>
  </section>

  <nav class="page-next"><a href="/employees/"><small>NEXT / 02</small>让 Agent 成为 AI员工 <strong>→</strong></a></nav>
</div>
