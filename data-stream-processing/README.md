# Data Stream Processing

![Course Load](https://img.shields.io/badge/Course%20Load-24h-blue)
![Unit](https://img.shields.io/badge/Unit-PUC%20Minas%20Virtual-orange)

## Overview

In this self-paced module, I explored the fundamentals and practical applications of continuous data stream processing. This subject covered the online Big Data ecosystem, where information are generated continuously and the demand for real-time ingestion and processing are critical. Throughout this module, I designed and built my own online Big Data applications—creating end-to-end pipelines that ingested, processed, and analyzed streaming data as it arrived.

By the end of this module, I was able to:

- Understand core concepts of continuous data streams, IoT data flows, IPv6 implications, and the distinctions between discrete and continuous data streams;
- Deploy and configure open-source ingestion tools, including Apache Flume and Kafka, to reliably collect data;
- Implement real-time processing topologies with Apache Storm and Spark Streaming to transform and analyze streams;
- Architect hybrid batch + stream pipelines, culminating in a live recommendation system that processed user events online.

The module comprised four units:

1. **Streaming Concepts & Architecture**: I compared batch vs. stream processing, simulated producer/consumer workflows, and explored backpressure, event vs. processing time semantics.
2. **Ingestion with Apache Flume & Kafka**: I configured Flume agents to collect logs and built Python-based Kafka producer/consumer pairs for scalable data intake.
3. **Real-Time Processing with Apache Storm & Spark Streaming**: I implemented Storm topologies (spouts and bolts) and processed Kafka streams with Spark Structured Streaming, writing results to various sinks.
4. **Online Recommendation System**: I developed a miniature recommendation engine, combining a batch-trained model in Spark with a streaming inference pipeline in Kafka, and exposed an API for live recommendation queries.

## Prerequisites

- Docker ≥ 20.10
- Docker Compose ≥ 1.27
- Java ≥ 8 (for Kafka, Flume, Storm)
- Python ≥ 3.7 (for Spark Streaming examples)
- A code editor or IDE of your choice

> *These will be updated as I progress through the module.*

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/BrunoChiconato/pos-graduacao-engenharia-de-dados.git
   cd pos-graduacao-engenharia-de-dados/data-stream-processing
   ```

2. **Create working directories**
   ```bash
   mkdir -p data logs scripts
   ```

3. **Configure environment variables** 
   - Copy and edit `.env.example` to `.env` with tool-specific settings (e.g., Kafka broker addresses, Flume ports).

4. **Launch Docker services**
   ```bash
   docker compose up -d --build
   ```

5. **Verify services are running**
   ```bash
   docker compose ps
   ```