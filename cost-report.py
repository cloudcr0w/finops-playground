import json

with open("cost-sample.json") as f:
    data = json.load(f)

total = 0
by_service = {}

for entry in data:
    service = entry["service"]
    cost = entry["cost"]
    total += cost
    by_service[service] = by_service.get(service, 0) + cost

print("=== AWS Cost Report (Mock) ===")
for service, cost in by_service.items():
    print(f"{service}: ${cost:.2f}")
print(f"Total: ${total:.2f}")
