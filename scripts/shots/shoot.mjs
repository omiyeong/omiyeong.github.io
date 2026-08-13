import { chromium } from '@playwright/test';
const OUT = '/Users/lx/.openclaw/workspace/project/self/omiyeong.github.io/docs/public/shots';
const b = await chromium.launch();
const ctx = await b.newContext({ viewport: { width: 1600, height: 780 }, deviceScaleFactor: 2, colorScheme: 'dark' });
const p = await ctx.newPage();
await p.goto('http://localhost:4321/', { waitUntil: 'networkidle' });
await p.fill('#wm-login-username', process.env.U);
await p.fill('#wm-login-password', process.env.P);
await p.click('button[type=submit]');
await p.waitForSelector('[data-testid="module-members"]', { timeout: 20000 });
await p.waitForTimeout(1200);
await p.locator('.nma-globalbar-space button').first().click();
await p.waitForTimeout(600);
await p.getByText('牛马科技', { exact: true }).first().click();
await p.waitForTimeout(2500);

// 1) channel
await p.click('[data-testid="module-chat"]');
await p.waitForTimeout(1200);
const eng = p.locator('.nma-sidebar-item', { hasText: 'engineering' }).first();
if (await eng.count()) { await eng.click(); await p.waitForTimeout(2500); }
await p.evaluate(() => { const el = document.querySelector('[data-testid="channel-message-pane"]'); if (el) el.scrollTop = 0; });
await p.waitForTimeout(600);
await p.screenshot({ path: `${OUT}/channel.png` });
console.log('channel.png ok');

// 2) employee
await p.setViewportSize({ width: 1600, height: 830 });
await p.click('[data-testid="module-members"]');
await p.waitForTimeout(1500);
const xy = p.locator('.nma-sidebar-item', { hasText: '小圆' }).first();
if (await xy.count()) { await xy.click(); await p.waitForTimeout(2500); }
else console.log('未找到 小圆');
await p.screenshot({ path: `${OUT}/employee.png` });
console.log('employee.png ok');

// 3) machine
await p.setViewportSize({ width: 1600, height: 560 });
await p.click('[data-testid="module-computers"]');
await p.waitForTimeout(1500);
const mc = p.locator('.nma-sidebar-item', { hasText: 'Alex-MacBook-Pro' }).first();
if (await mc.count()) { await mc.click(); await p.waitForTimeout(2000); }
else console.log('未找到机器');
await p.screenshot({ path: `${OUT}/machine.png` });
console.log('machine.png ok');
await b.close();
