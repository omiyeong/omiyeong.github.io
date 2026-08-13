BEGIN;
INSERT INTO tasks (id, organization_id, channel_id, title, description, assignee_type, assignee_id, status, created_by_user_id, created_at, updated_at, source)
VALUES ('task_demo_001', 'org_demo_niuma0001', 'ch_demo_eng',
  '把「事件订阅缺项」加进发版前检查', '在 release 检查单里加一条：上线前核对飞书事件订阅是否覆盖群聊进群事件。',
  'ai_employee', 'demo-akai', 'running', 'user_f06fc2fda72d4d3bbc63',
  now() - interval '4 minutes', now(), 'channel');

INSERT INTO ai_employee_runs (id, organization_id, channel_id, task_id, ai_employee_id, environment_id, bridge_id, runtime, status, started_at, created_at, updated_at)
VALUES ('run_demo_001', 'org_demo_niuma0001', 'ch_demo_eng', 'task_demo_001', 'demo-akai',
  'machine_demo_alexmbp', 'machine_demo_alexmbp', 'codex', 'running',
  now() - interval '3 minutes', now() - interval '3 minutes', now());

INSERT INTO run_events (id, organization_id, run_id, kind, payload, created_at) VALUES
 ('rev_demo_001','org_demo_niuma0001','run_demo_001','started','{}'::jsonb, now() - interval '3 minutes'),
 ('rev_demo_002','org_demo_niuma0001','run_demo_001','tool',   '{"name":"read","detail":"docs/release-checklist.md"}'::jsonb, now() - interval '2 minutes'),
 ('rev_demo_003','org_demo_niuma0001','run_demo_001','tool',   '{"name":"edit","detail":"docs/release-checklist.md"}'::jsonb, now() - interval '40 seconds');
COMMIT;
