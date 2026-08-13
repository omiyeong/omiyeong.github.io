import playwright from "/Users/lx/.openclaw/workspace/project/self/NiuMa/node_modules/.pnpm/@playwright+test@1.59.1/node_modules/@playwright/test/index.js";
import { mkdir, rename } from "node:fs/promises";
import { join } from "node:path";

const siteRoot = "/Users/lx/.openclaw/workspace/project/self/.worktrees/omiyeong-pages-niuma-explorations";
const { chromium } = playwright;
const shotsDir = join(siteRoot, "docs/public/shots");
const videoDir = join(siteRoot, ".tmp/channel-reel");

await mkdir(videoDir, { recursive: true });
const browser = await chromium.launch();
const context = await browser.newContext({
  colorScheme: "dark",
  deviceScaleFactor: 1,
  recordVideo: { dir: videoDir, size: { width: 1440, height: 810 } },
  viewport: { width: 1440, height: 810 },
});
const page = await context.newPage();

await page.route("http://60.190.249.69:19420/**", async (route) => {
  const url = new URL(route.request().url());
  const response = await route.fetch({ url: `http://127.0.0.1:8920${url.pathname}${url.search}` });
  await route.fulfill({ response });
});

await page.goto("http://127.0.0.1:8921/", { waitUntil: "networkidle" });
await page.fill("#wm-login-username", "admin");
await page.fill("#wm-login-password", "password");
await page.click('button[type="submit"]');
await page.waitForSelector('[data-testid="module-members"]', { timeout: 20_000 });
await page.waitForTimeout(800);

await page.locator(".nma-globalbar-space button").first().click();
await page.waitForTimeout(450);
await page.getByText("牛马科技", { exact: true }).first().click();
await page.waitForTimeout(1_200);

await page.click('[data-testid="module-chat"]');
await page.waitForTimeout(900);
const engineering = page.locator(".nma-sidebar-item", { hasText: "engineering" }).first();
await engineering.click();
await page.waitForTimeout(2_300);
await page.evaluate(() => {
  const pane = document.querySelector('[data-testid="channel-message-pane"]');
  if (pane) pane.scrollTop = 0;
});
await page.waitForTimeout(1_200);
await page.screenshot({ path: join(shotsDir, "channel-live.png") });

const video = page.video();
await context.close();
await browser.close();
if (!video) throw new Error("Playwright did not create a recording");
await rename(await video.path(), join(shotsDir, "channel-live.webm"));
console.log("Captured channel-live.webm and channel-live.png");
