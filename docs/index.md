---
layout: home
---

<section class="niuma-landing">
  <p class="niuma-kicker">NIUMA / FIELD NOTES 2026</p>
  <h1>AI 的下一阶段，<br><em>不是更会聊天。</em></h1>
  <p class="niuma-lede">NiuMa 记录四次关于 AI 如何进入真实工作的探索：先让 Agent 能运行和协作，再让它拥有岗位与业务入口；然后重新思考团队协作，最后把个人研发交付变成有证据的闭环。</p>
  <div class="niuma-actions">
    <a class="niuma-button primary" href="#explorations">查看四条探索线</a>
    <a class="niuma-button" href="/employees/">从 AI员工开始</a>
  </div>
</section>

<section class="landing-reel" aria-label="NiuMa 真实界面速览">
  <video autoplay muted loop playsinline poster="/shots/channel-live.png" aria-label="登录后进入 NiuMa engineering 频道的真实操作录像">
    <source src="/shots/channel-live.webm" type="video/webm">
  </video>
  <div><b>LIVE PRODUCT REEL</b><span>真实操作录像：登录、进入 Workspace，再打开 engineering 协作频道。</span></div>
</section>

<section id="explorations" class="exploration-index">
  <header class="section-heading">
    <p>FOUR DIRECTIONS</p>
    <h2>不是路线图，是走过的路。</h2>
    <span>每一页都区分已验证的能力、正在验证的假设和明确停止的尝试。</span>
  </header>

  <div class="exploration-grid">
    <a class="exploration-card runtime" href="/runtime/">
      <div><span class="status verified">已实现并持续验证</span><b>01 / EXECUTION</b></div>
      <h3>让 Agent<br>进入真实环境</h3>
      <p>统一多种 coding runtime，经由本机 daemon 执行；人可以远程发起、在 Channel 中 @ 它，并在 Thread 里看见过程。</p>
      <i>查看运行底座 <strong>→</strong></i>
    </a>
    <a class="exploration-card employee" href="/employees/">
      <div><span class="status live">已在内部使用</span><b>02 / ROLE</b></div>
      <h3>让 Agent<br>成为 AI员工</h3>
      <p>岗位职责、外部入口、资料索引与复盘成长，让一次模型调用变成能持续承担业务的工作身份。</p>
      <i>查看业务闭环 <strong>→</strong></i>
    </a>
    <a class="exploration-card collaboration" href="/collaboration/">
      <div><span class="status research">设计验证中</span><b>03 / COLLABORATION</b></div>
      <h3>让团队协作<br>不再只靠人找人</h3>
      <p>从个人分身、飞书全局 Agent 到项目责任协作：把失败的假设和最终收敛的边界都留下来。</p>
      <i>查看三次演进 <strong>→</strong></i>
    </a>
    <a class="exploration-card loop" href="/personal-loop/">
      <div><span class="status branch">独立分支验证中</span><b>04 / DELIVERY</b></div>
      <h3>让个人交付<br>形成可恢复的 Loop</h3>
      <p>任务、worktree、测试、独立 Review、审批与交付由同一状态机连接；证据不足时，流程必须停下。</p>
      <i>查看交付控制面 <strong>→</strong></i>
    </a>
  </div>
</section>

<section class="proof-strip">
  <div><b>人类保留控制权</b><span>审批不是提示词，而是流程状态与一次性授权。</span></div>
  <div><b>执行发生在本机</b><span>Server 编排与审计；daemon 驱动本地 runtime。</span></div>
  <div><b>完成不等于正确</b><span>测试、Review、外部动作与部署各自需要独立证据。</span></div>
</section>

<section class="reading-room">
  <p class="niuma-kicker">ENGINEERING ROOM</p>
  <h2>深入实现，而不跳过取舍。</h2>
  <p>架构、协议与设计复盘仍保留为工程笔记；它们解释系统为何这样设计，而不是替代产品本身。</p>
  <a href="/engineering/">进入工程笔记 →</a>
</section>
