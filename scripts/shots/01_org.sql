BEGIN;
-- 演示空间：牛马科技（仅本地截图用）
INSERT INTO organizations (id, name, owner_user_id, created_at, updated_at)
VALUES ('org_demo_niuma0001', '牛马科技', 'user_f06fc2fda72d4d3bbc63', now() - interval '46 days', now());

INSERT INTO organization_members (organization_id, member_type, member_id, role, status, joined_at)
VALUES ('org_demo_niuma0001', 'human', 'user_f06fc2fda72d4d3bbc63', 'owner', 'active', now() - interval '46 days');

-- 机器：Alex-MacBook-Pro
INSERT INTO bridges (id, name, status, agents_supported, connected_at, last_seen_at, created_at, updated_at)
VALUES ('machine_demo_alexmbp', 'Alex-MacBook-Pro', 'online',
  '["claude","codex","cursor","kimi","hermes","antigravity","opencode"]'::jsonb,
  now() - interval '3 hours', now(), now() - interval '46 days', now());

INSERT INTO environments (id, bridge_id, name, cwd, runtimes_supported, permission_mode, status, metadata, last_seen_at, created_at, updated_at, organization_id)
VALUES ('machine_demo_alexmbp', 'machine_demo_alexmbp', 'Alex-MacBook-Pro', '',
  '["claude","codex","cursor","kimi","hermes","antigravity","opencode"]'::jsonb,
  'normal', 'online',
  jsonb_build_object(
    'os', 'darwin/arm64',
    'hostname', 'alex-macbook-pro.local',
    'daemon_version', '0.1.66',
    'sandbox_capable', true,
    'container_engine', jsonb_build_object('kind','docker','version','27.4.0'),
    'daemon_service_mode', 'launchd'
  ),
  now(), now() - interval '46 days', now(), 'org_demo_niuma0001');
COMMIT;
